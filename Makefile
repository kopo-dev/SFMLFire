NAME	=	SFMLFire

CC	=	g++ 

SRCS	=	main.cpp		

OBJS	=	$(SRCS:.cpp=.o)

CXXFLAGS=	-Wall -Werror -std=c++14 -I./include/  -lsfml-graphics -lsfml-window -lsfml-system

RM	=	rm -fr

all	:	$(NAME)

$(NAME)	:	$(OBJS)
		$(CC) -o $(NAME) $(OBJS) $(CXXFLAGS)

clean	:
		$(RM) $(OBJS)

fclean	:	clean
		$(RM) $(NAME)

re	:	fclean all

.PHONY	:	all re clean fclean
