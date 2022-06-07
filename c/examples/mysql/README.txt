/*
inspiration from https://zetcode.com/db/mysqlc/
   and https://sourabhbajaj.com/mac-setup/MyySQL/
 */
   
   #install mysql v5.7 on Mac silicon
brew install mysql@5.7
#add the mysql include path and libraries for the make file
CFLAGS	= -I../../src -I/opt/homebrew/opt/mysql@5.7/include/mysql -g -Wall# -O2
LIBS	= -L/opt/homebrew/opt/mysql@5.7/lib -lmysqlclient
#start the mysql server
mysql.server start