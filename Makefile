all: preklad

preklad:
	chmod +x ipkperfserver ipkperfclient

clean:
	rm -rf ipkperf-* xjurik08.tgz

pack: clean
	tar -cvzf xjurik08.tgz ./ 

test: preklad
	chmod +x test.sh
	./test.sh ipkperfserver ipkperfclient
