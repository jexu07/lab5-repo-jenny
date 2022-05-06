test: MarkdownParse.class MarkdownParseTest.class
	echo "test ran"

MarkdownParse.class: MarkdownParse.java
	javac MarkdownParse.java

MarkdownParseTest.class: MarkdownParse.class MarkdownParseTest.java
	javac -cp .:lib/junit-4.13.2.jar:lib/hamcrest-core-1.3.jar MarkdownParseTest.java

all: target1 target2
	echo "All done!"

target1:
	echo "Line 1 printed"

target2:
	echo "Line 2 printed"
	touch target2


run: test
	echo "hahahahahah"
	java -cp .:lib/junit-4.13.2.jar:lib/hamcrest-core-1.3.jar org.junit.runner.JUnitCore MarkdownParseTest
