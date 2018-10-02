rm main
gcc main.c -o main

out=$(./main)
expected="Hello world"

diff <(echo $out) <(echo $expected) &>/dev/null

if [ $? = 0 ]
	then echo "All tests passed"
else
	echo "Test failed. Expected output >>Hello world<<, got output >> $out"
fi
