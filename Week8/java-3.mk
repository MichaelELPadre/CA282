sources := $(wildcard *.java)
classes := $(sources:.java=.class)
all: $(classes)
%.class: %.java
	javac $<
clean:
	rm -rf $(classes)
.PHONY: all clean