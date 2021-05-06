# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: namkyu <namkyu@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/06 11:17:18 by namkyu            #+#    #+#              #
#    Updated: 2021/05/06 12:55:12 by namkyu           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = push_swap.a

CC = gcc
CFLAGS = -Wall -Wextra -Werror
AR = ar rcs
RM = rm -f

LIBFT = libft.a

FILES =	bfs_search\
        merge_sort\
        optimize\
        parse\
        stack_instruction\
        stack_ctrl\
        stack_utils\
        utils\
        divide\

SRCS_DIR = ./
SRCS = $(addprefix $(SRCS_DIR), $(addsuffix .c, $(FILES)))

OBJS_DIR = ./
OBJS = $(addprefix $(OBJS_DIR), $(addsuffix .o, $(FILES)))

all: $(NAME)

$(NAME): $(OBJS) $(LIBFT)
	$(AR) $@ $^

$(LIBFT) :
	$(MAKE) -s -C ../1.libft
	cp ../1.libft/$@ ./

clean:
	$(RM) $(OBJS)
	$(MAKE) -s -C ../1.libft clean

fclean: clean
	$(RM) $(NAME) $(LIBFT)
	$(MAKE) -s -C ../1.libft fclean

re: clean all

.PHONY: bonus all clean fclean re
