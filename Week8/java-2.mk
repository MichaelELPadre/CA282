sources := $(wildcard *.java)
classes := $(sources:.java=.class)
all: $(classes)
%.class: %.java
	javac $<