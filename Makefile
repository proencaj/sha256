CC = gcc
CFLAGS = -Wall -Iinclude

# Directories
SRC_DIR = src
INCLUDE_DIR = include
LIB_DIR = lib

# Output library file
LIB = $(LIB_DIR)/libsha256.a

# Object files
OBJS = $(SRC_DIR)/sha256.o

.PHONY: all clean

all: $(LIB)

$(LIB): $(OBJS)
	mkdir -p $(LIB_DIR)
	ar rcs $(LIB) $(OBJS)

$(SRC_DIR)/sha256.o: $(SRC_DIR)/sha256.c $(INCLUDE_DIR)/sha256.h
	$(CC) $(CFLAGS) -c $(SRC_DIR)/sha256.c -o $(SRC_DIR)/sha256.o

clean:
	rm -rf $(LIB_DIR) $(SRC_DIR)/*.o