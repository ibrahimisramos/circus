#!/usr/bin/env bash

# create bin directory if it doesn't exist
if [ ! -d "../bin" ]
then
    mkdir ../bin
fi

# delete output from previous run
if [ -e "./ACTUAL.TXT" ]
then
    rm ACTUAL.TXT
fi

# compile the code into the bin folder, terminates if error occurred
<<<<<<< HEAD
if ! javac -cp ../src -Xlint:none -d ../bin ../src/main/java/circus/Circus.java
=======
if ! javac -cp ../src -Xlint:none -d ../bin ../src/main/java/circus/*.java ../src/main/java/circus/animal/*.java ../src/main/java/circus/stuff/*.java
>>>>>>> 66b4b1ff5b34fba9a7a4558c47a82f93915f12d1
then
    echo "********** BUILD FAILURE **********"
    exit 1
fi

# run the program, feed commands from input.txt file and redirect the output to the ACTUAL.TXT
java -classpath ../bin circus.Circus > ACTUAL.TXT

# compare the output to the expected output
diff ACTUAL.TXT EXPECTED.TXT
if [ $? -eq 0 ]
then
    echo "Test result: PASSED"
    exit 0
else
    echo "Test result: FAILED"
    exit 1
fi
