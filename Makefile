NAME = fatls
SRC = fatls.c
OBJ = $(SRC:.c=.o)

all: $(OBJ)
	gcc -Wall $(OBJ) -o $(NAME)

