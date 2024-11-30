# Nom de l'exécutable
TARGET = hello10

# Compilateur
CC = gcc

# Options de compilation
CFLAGS = -Wall -Wextra -pthread

# Répertoire contenant les sources
SRC_DIR = src

# Fichiers sources
SRCS = $(SRC_DIR)/hello10.c

# Fichiers objets (générés automatiquement à partir des sources)
OBJS = $(SRCS:.c=.o)

# Règle par défaut : compilation et édition de liens
all: $(TARGET)

# Règle pour générer l'exécutable
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

# Règle pour générer les fichiers objets
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Règle pour nettoyer les fichiers générés
clean:
	rm -f $(OBJS) $(TARGET)

# Règle pour exécuter le programme
run: $(TARGET)
	./$(TARGET)
