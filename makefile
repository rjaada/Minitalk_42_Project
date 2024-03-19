INC = minitalk.h

CFLAGS = -Wall -Wextra -Werror


all : server client

server: server.c minitalk_utils.c $(INC)
	cc $(CFLAGS) server.c minitalk_utils.c -o server

client: client.c minitalk_utils.c $(INC)
	cc $(CFLAGS) client.c minitalk_utils.c -o client

clean:
	rm -rf server client
	
fclean : clean
	rm -rf server client

re : fclean all
