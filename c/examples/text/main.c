/* -----------------------------------------------------------------------
   Process AIS messages read from stdin and output readable text fields
   Copyright 2006 by Brian C. Lane
   All Rights Reserved
   ----------------------------------------------------------------------- */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "portable.h"
#include "nmea.h"
#include "sixbit.h"
#include "vdm_parse.h"


int main( int argc, char *argv[] )
{
    ais_state     ais;
    char          buf[256];

    /* AIS message structures, only parse ones with positions */
    aismsg_1  msg_1;
    aismsg_2  msg_2;
    aismsg_3  msg_3;
    aismsg_4  msg_4;
    aismsg_9  msg_9;
    aismsg_15 msg_15;
    aismsg_18 msg_18;
    aismsg_19 msg_19;
    aismsg_21 msg_21;
    
    /* Position in DD.DDDDDD */
    double lat_dd = 0;
    double long_ddd = 0;
    long   userid = 0;
    int assemble_ret=-1;

    /* Clear out the structures */
    memset( &ais, 0, sizeof( ais_state ) );

    /* Process incoming packets from stdin */
    while( !feof(stdin) )
    {
        if (fgets( buf, 255, stdin ) == NULL ) break;
        assemble_ret = assemble_vdm( &ais, buf );
        if (assemble_ret == 0)
        {
            /* Get the 6 bit message id */
            ais.msgid = (unsigned char) get_6bit( &ais.six_state, 6 );
            lat_dd = 0;
            long_ddd = 0;
            userid = 0;
            /* process message with appropriate parser */
            //printf( "MESSAGE ID: %d\n", ais.msgid );
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
                            
                case 9:
                    if( parse_ais_9( &ais, &msg_9 ) == 0 )
                    {
                        userid = msg_9.userid;
                        pos2ddd( msg_9.latitude, msg_9.longitude, &lat_dd, &long_ddd );
                    }
                    break;
                
                case 15:
                    if( parse_ais_15( &ais, &msg_15 ) == 0 )
                    {
                        userid = msg_15.userid;
                        if( msg_15.num_reqs > 0 )
                        {
                            printf("dest #1   : %ld\n", msg_15.destid1 );
                            printf("msgid #1  : %d\n", msg_15.msgid1_1 );
                            printf("offset #1 : %d\n", msg_15.offset1_1 );
                        }
                        if( msg_15.num_reqs > 1 )
                        {
                            printf("msgid #2  : %d\n", msg_15.msgid1_2 );
                            printf("offset #2 : %d\n", msg_15.offset1_2 );
                        }
                        if( msg_15.num_reqs > 2 )
                        {
                            printf("dest #2     : %ld\n", msg_15.destid2 );
                            printf("msgid #2.1  : %d\n", msg_15.msgid2_1 );
                            printf("offset #2.1 : %d\n", msg_15.offset2_1 );
                        }
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
                    }
                    break;

                case 21:
                	if( parse_ais_21( &ais, &msg_21 ) == 0 )
                	{
                		userid = msg_21.userid;
                		pos2ddd( msg_21.latitude, msg_21.longitude, &lat_dd, &long_ddd );
                	}
                	break;

                default:
                	continue;
            }  /* switch msgid */
            
            printf( "MESSAGE ID: %d\n", ais.msgid );
            printf( "USER ID   : %ld\n", userid );
            printf( "POSITION  : %0.6f %0.6f\n", lat_dd, long_ddd );
            
        }  /* if */
        else if (assemble_ret == 2)
        {
        	printf( "CHECKSUM ERROR: %s\n", buf );
        }
    }  /* while */
    
    return 0;
}
