CFLAGS=-Wall
CFLAGS+=-Werror

all:philsword

clean:
	$(RM) philsword

test:all
	dd if=/dev/urandom of=/dev/stdout bs=1 count=16 2> /dev/null | ./philsword | tee /dev/stderr | flite /dev/stdin

passwdtest:all
	cat /etc/passwd | ./philsword | tee /dev/stderr | flite /dev/stdin
