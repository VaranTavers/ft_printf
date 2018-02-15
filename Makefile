# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ztasnadi <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/01/09 18:08:35 by ztasnadi          #+#    #+#              #
#    Updated: 2018/02/15 14:07:00 by ztasnadi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
INC = ./includes/
SRC = ft_printf.c ft_dn.c ft_putbinf.c ft_atoi.c ft_strlen.c ft_putcharf.c \
	  ft_puthexf.c ft_putoctf.c ft_putunbrf.c ft_strlen.c ft_percent.c \
	  ft_putnbrf.c ft_putptrf.c ft_putwcharf.c ft_putstrf.c ft_putwstrf.c \
	  ft_putstr.c ft_putchar.c ft_memcpy.c ft_printf_parser.c ft_putwstr.c \
	  ft_update_conv.c

OBJ = $(SRC:.c=.o)

all: $(NAME)

$(NAME):
	gcc -I $(INC) -Wall -Wextra -Werror -c $(SRC)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re:	fclean all
