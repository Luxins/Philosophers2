SRCS = src/main.c src/time.c src/utils.c src/threads.c src/access.c
NAME = philo
CFLAGS = -Werror -Wextra -Wall

$(NAME): $(SRCS)
	gcc $(CFLAGS) $(SRCS) -o $(NAME)

all: $(NAME)

clean:
	cd src && rm -f $(wildcard *.o)

fclean: clean
	rm -f $(NAME)

re: fclean all