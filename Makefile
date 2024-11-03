CC = gcc
CFLAGS = -Wall -Wextra -Werror
LIBFT_DIR = ../Libft
LIBFT = $(LIBFT_DIR)/libft.a
INCLUDES = -I $(LIBFT_DIR) -I .

TEST_SRCS = test_ft_strlen.c 
TEST_EXES = $(TEST_SRCS:.c=)

all: $(LIBFT) $(TEST_EXES)

$(TEST_EXES): % : %.c $(LIBFT)
	$(CC) $(CFLAGS) $(INCLUDES) $< $(LIBFT) -o $@

$(LIBFT):
	$(MAKE) -C $(LIBFT_DIR)

clean:
	rm -f $(TEST_EXES)

fclean: clean
	$(MAKE) -C $(LIBFT_DIR) fclean

re: fclean all

.PHONY: all clean fclean re
