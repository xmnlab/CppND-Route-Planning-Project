clean:
	rm -rf build/*


build: clean
	cd build && cmake .. && make

rebuild:
	cd build && make

run_test:
	cd build && ./test

rebuild_and_test: rebuild run_test

ci: build run_test
