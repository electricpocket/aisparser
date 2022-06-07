/* -----------------------------------------------------------------------
   Process AIS messages read from stdin and write to mysql database
   Copyright 2022 by Steve Bennett
   Copyright 2006 by Brian C. Lane
   All Rights Reserved
   ----------------------------------------------------------------------- */
#include <mysql.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "portable.h"
#include "nmea.h"
#include "sixbit.h"
#include "vdm_parse.h"
#include <getopt.h>

#define HELP_MSG \
		"Usage: ais_mysql [-D Database] [-T Table] [-U Username] [-P Password] [-H Host] [-d debug][-p] [-h]\n\n"\
		"-D\tDatabase name\n"\
		"-T\tTable name\n"\
		"-U\tUser name\n"\
		"-P\tPassword\n"\
		"-H\tHost (default localhost)\n"\
		"-p\tPosition messages only - ignore type 5\n"\
		"-d\tDebug mode)\n"\
		"-h\tDisplay this help\n"

#define CMD_PARAMS "D:T:U:P:H:pdh"

int main( int argc, char *argv[] )
{
    ais_state     ais;
    char          buf[512];
    char          buf1[512];
    char          buf2[512];
    static int debug_nmea=0;
    static int sentence_count=0;
    static int num_sentences=0;
    static int position_only=0;
    const char *params=CMD_PARAMS;

    /* AIS message structures, only parse ones with positions */
    aismsg_1  msg_1;
    aismsg_2  msg_2;
    aismsg_3  msg_3;
    aismsg_4  msg_4;
    aismsg_5  msg_5;
    //binary messages
    aismsg_6  msg_6;
    aismsg_7  msg_7;
    aismsg_8  msg_8;
    //aircraft
    aismsg_9  msg_9;
    //aismsg_15 msg_15;
    aismsg_18 msg_18;
    aismsg_19 msg_19;
    aismsg_21 msg_21;
    aismsg_27 msg_27;
    
    int assemble_ret=-1;

    /* Position in DD.DDDDDD */
    double lat_dd = 0;
    double long_ddd = 0;
    long   userid = 0;
    long mmsi = 0;
    
    /* Mysql parameters */
    char* Database = "";
    char* Table = "";
    char* Username = "";
    char* Password = "";
    char* Host = "";
  
    int opt;

    MYSQL *con = mysql_init(NULL);

    /* Clear out the structures */
    memset( &ais, 0, sizeof( ais_state ) );

    if (argc < 2) {
           fprintf(stderr, HELP_MSG);
           return EXIT_FAILURE;
       }

    while ((opt = getopt(argc, argv, params)) != -1) {
        switch (opt) {
        case 'D':
            Database = (optarg);
            break;
        case 'T':
            Table = (optarg);
            break;
		case 'U':
			Username = optarg;
			break;
		case 'P':
			Password = optarg;
            break;
 		case 'H':
			Host = optarg;
            break;
        case 'p':
            position_only = 1;
            break;
         case 'd':
            debug_nmea = 1;
            break;
        case 'h':
        default:
            fprintf(stderr,"MySQL client version: %s\n", mysql_get_client_info());
            fprintf(stderr, HELP_MSG);
            return EXIT_SUCCESS;
            break;
        }
    }

    /* Process incoming packets from stdin */
    while( !feof(stdin) )
    {
        if(strlen(buf) > 0 ) strcpy(buf1,buf); //remember first sentence of multi-sentence message
        if (fgets( buf, 511, stdin ) == NULL ) break;
        sentence_count++;
        num_sentences=ais.total;
        assemble_ret = assemble_vdm( &ais, buf );
        if (assemble_ret == 0)
        {

            /* Get the 6 bit message id */
            ais.msgid = (unsigned char) get_6bit( &ais.six_state, 6 );
            lat_dd = 0;
            long_ddd = 0;
            userid = 0;
            /* process message with appropriate parser */
            switch( ais.msgid ) {
                case 1:
                    if( parse_ais_1( &ais, &msg_1 ) == 0 )
                    {
                        userid = msg_1.userid;
                        pos2ddd( msg_1.latitude, msg_1.longitude, &lat_dd, &long_ddd );
                    }
                    break;
                            
                case 2:
                    if( parse_ais_2( &ais, &msg_2 ) == 0 )
                    {
                        userid = msg_2.userid;
                        pos2ddd( msg_2.latitude, msg_2.longitude, &lat_dd, &long_ddd );
                    }
                    break;
                            
                case 3:
                    if( parse_ais_3( &ais, &msg_3 ) == 0 )
                    {
                        userid = msg_3.userid;
                        pos2ddd( msg_3.latitude, msg_3.longitude, &lat_dd, &long_ddd );
                    }
                    break;
                            
                case 4:
                    if( parse_ais_4( &ais, &msg_4 ) == 0 )
                    {
                        userid = msg_4.userid;
                        pos2ddd( msg_4.latitude, msg_4.longitude, &lat_dd, &long_ddd );
                    }
                    break;

                case 5:
                	if(position_only == 0 &&  parse_ais_5( &ais, &msg_5 ) == 0 )
                	{
                		userid = msg_5.userid;
                		strcpy(buf2,buf);
                		strcpy(buf,buf1);
                		strcat(buf,buf2);

                	}
                	break;

                case 6:
                	if( parse_ais_6( &ais, &msg_6 ) == 0 )
					{
						userid = msg_6.userid;
					}
					break;

                case 7:
					if( parse_ais_7( &ais, &msg_7 ) == 0 )
					{
						userid = msg_7.userid;
					}
					break;
                case 8:
					if( parse_ais_8( &ais, &msg_8 ) == 0 )
					{
						userid = msg_8.userid;
					}
					break;
               case 9:
					if( parse_ais_9( &ais, &msg_9 ) == 0 )
					{
						userid = msg_9.userid;
						pos2ddd( msg_9.latitude, msg_9.longitude, &lat_dd, &long_ddd );
					}
                    break;
                case 18:
                    if( parse_ais_18( &ais, &msg_18 ) == 0 )
                    {
                        userid = msg_18.userid;
                        pos2ddd( msg_18.latitude, msg_18.longitude, &lat_dd, &long_ddd );
                    }
                    break;
                    

                case 19:
                    if( parse_ais_19( &ais, &msg_19 ) == 0 )
                    {
                        userid = msg_19.userid;
                        pos2ddd( msg_19.latitude, msg_19.longitude, &lat_dd, &long_ddd );
                        //printf( "USER ID   : %ld\n", userid );
                        //printf( "POSITION  : %0.6f %0.6f\n", lat_dd, long_ddd );
                        strcpy(buf2,buf);
                        strcpy(buf,buf1);
                        strcat(buf,buf2);
                    }
                    break;

                case 21:
                	if( parse_ais_21( &ais, &msg_21 ) == 0 )
                	{
                		userid = msg_21.userid;
                		strcpy(buf2,buf);
                		strcpy(buf,buf1);
                		strcat(buf,buf2);
                		pos2ddd( msg_21.latitude, msg_21.longitude, &lat_dd, &long_ddd );
                	}
                	break;
                case 27:
                	if (debug_nmea > 0) fprintf(stderr, "MSG27 FOUND, %s\n", buf);

                    if( parse_ais_27( &ais, &msg_27 ) == 0 )
                    {
                        userid = msg_27.userid;
                        pos2ddd( msg_27.latitude, msg_27.longitude, &lat_dd, &long_ddd );
                        if (debug_nmea > 0) fprintf(stderr, "MSG27 USER ID   : %ld\n", userid );
                        if (debug_nmea > 0) fprintf(stderr, "MSG27 POSITION  : %0.6f %0.6f\n", lat_dd, long_ddd );
                    }
                    break;
                default:
                	continue;
            }  /* switch msgid */
            

            if (debug_nmea > 0)
            {
            	fprintf(stderr, "mmsi,%ld,Line,%d,ignore,%s\n", userid,sentence_count, buf );

            }
            //zero out the buffers now we have successfully read a message in
            strcpy(buf2,"");
            strcpy(buf1,"");
            strcpy(buf,"");
            /*

            printf( "USER ID   : %ld\n", userid );
            printf( "POSITION  : %0.6f %0.6f\n", lat_dd, long_ddd );
            */
            
        }  /* if */
        else if (assemble_ret == 2)
        {
        	fprintf(stderr, "CHECKSUM ERROR: %s\n", buf );
        	strcpy(buf,"");
        }
    }  /* while */
    
    return 0;
}
