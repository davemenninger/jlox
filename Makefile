.DEFAULT_GOAL := compile

compile:
	javac  -cp src src/com/craftinginterpreters/lox/*.java

run: compile
	java -cp src com/craftinginterpreters/lox/Lox

.PHONY: clean
clean:
	echo "not implemented"
