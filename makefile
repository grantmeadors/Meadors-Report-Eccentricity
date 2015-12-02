# If needed, can reduce makefile as bash command
#!/bin/bash
SOURCES = Meadors-Report-Eccentricity
CC = pdflatex
BIB = bibtex

all: compilePost compileBib compilePre

compilePre:
	$(CC) $(SOURCES)

compileBib: compilePre
	-$(BIB) $(SOURCES)

compilePost: compileBib compilePre
	$(CC) $(SOURCES)
	$(CC) $(SOURCES)
	$(CC) $(SOURCES)

#all: compile4

#compile4: compile3
#	$(CC) $(SOURCES)
#
#compile3: compile2
#	$(CC) $(SOURCES)
#
#compile2: compileBib
#	$(CC) $(SOURCES)
#    
#compileBib: compile1 
#	$(BIB) $(SOURCES)
#
#compile1:
#	$(CC) $(SOURCES)
