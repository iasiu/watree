// łaczymy sie z baza danych

#include <my_global.h>
#include <mysql.h> 

int main(int argc, char **argv)
{
    // def wartości (zmienimy jbc)
    const char *db = "test";
    const char *server = "localhost";
	const char *login = "sqodo";
    const char *password = "INCZ2137";
	int port = 2137
	
	MYSQL *con = mysql_init(NULL);

	if (con == NULL)
	{
	  fprintf(stderr, "%s\n", mysql_error(con));
	  exit(1);
	}
	printf("connecting to mysql server...\r\n");
	
	if (mysql_real_connect(con, "db", "localhost", "root", "password", NULL, 0, NULL, 0) == NULL)
	{
		printf("error: %s\r\n", mysql_error(con));
		mysql_close(con);
		exit(1);
	}
	
	// cd kodu
	printf("connected.\r\n");
	printf("closing connection...\r\n");

	mysql_close(con);
	printf("closed.\r\n");

	exit(0);
}