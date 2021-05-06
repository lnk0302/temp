# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: namkyu <namkyu@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/06 11:56:09 by namkyu            #+#    #+#              #
#    Updated: 2021/05/06 13:07:59 by namkyu           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME1 = push_swap
NAME2 = checker

CC = gcc
CFLAGS = -Wall -Wextra -Werror
RM = rm -f

LIB_PUSH = ./lib/2.push_swap/push_swap.a
LIB_PUSH_DIR = ./lib/2.push_swap/

LIBFT = ./lib/1.libft/libft.a

FILE_NAME1 = push_swap
FILE_NAME2 = checker

N1_SRCS_DIR = ./src_push_swap/
N1_SRCS = $(addprefix $(N1_SRCS_DIR), $(addsuffix .c, $(FILE_NAME1)))
N1_OBJS_DIR = ./src_push_swap/
N1_OBJS = $(addprefix $(N1_OBJS_DIR), $(addsuffix .o, $(FILE_NAME1)))

N2_SRCS_DIR = ./src_checker/
N2_SRCS = $(addprefix $(N2_SRCS_DIR), $(addsuffix .c, $(FILE_NAME2)))
N2_OBJS_DIR = ./src_checker/
N2_OBJS = $(addprefix $(N2_OBJS_DIR), $(addsuffix .o, $(FILE_NAME2)))

all : $(NAME1) $(NAME2)

$(NAME1) : $(N1_OBJS) $(LIB_PUSH) $(LIBFT)
	$(CC) $(CFLAGS) -o $@ $(N1_OBJS) $(LIB_PUSH) $(LIBFT)

$(NAME2) : $(N2_OBJS) $(LIB_PUSH) $(LIBFT)
	$(CC) $(CFLAGS) -o $@ $(N2_OBJS) $(LIB_PUSH) $(LIBFT)

$(LIB_PUSH) :
	$(MAKE) -C $(LIB_PUSH_DIR)

clean:
	$(RM) $(N1_OBJS) $(N2_OBJS)
	$(MAKE) -C $(LIB_PUSH_DIR) clean

fclean: clean
	$(RM) $(NAME1) $(NAME2)
	$(MAKE) -C $(LIB_PUSH_DIR) fclean

re: clean all

.PHONY: all clean fclean re
