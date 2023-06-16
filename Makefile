.DEFAULT_GOAL := compile

tools:
	javac -cp src src/com/craftinginterpreters/tool/*.java

ast_gen: tools
	java -cp src com/craftinginterpreters/tool/GenerateAst src/com/craftinginterpreters/lox

compile: ast_gen
	javac -cp src src/com/craftinginterpreters/lox/*.java

run: compile
	java -cp src com/craftinginterpreters/lox/Lox

.PHONY: clean
clean:
	echo "not implemented"
