CC     := gcc
MACROS := 
CFLAGS := -I./include -Wundef -Wall -Wextra -O3 $(MACROS)


all:
	@mkdir -p build
	@$(CC) $(CFLAGS) src/bn.c ./tests/golden.c      -o ./build/test_golden
	@$(CC) $(CFLAGS) src/bn.c ./tests/hand_picked.c -o ./build/test_hand_picked
	@$(CC) $(CFLAGS) src/bn.c ./tests/load_cmp.c    -o ./build/test_load_cmp
	@$(CC) $(CFLAGS) src/bn.c ./tests/factorial.c   -o ./build/test_factorial
	@$(CC) $(CFLAGS) src/bn.c ./tests/randomized.c  -o ./build/test_random
	@$(CC) $(CFLAGS) src/bn.c ./tests/rsa.c         -o ./build/test_rsa


test:
	@echo
	@echo ================================================================================
	@./build/test_golden
	@echo ================================================================================
	@./build/test_hand_picked
	@echo ================================================================================
	@./build/test_load_cmp
	@echo ================================================================================
	@./build/test_factorial
	@echo ================================================================================
	@./build/test_rsa
	@echo ================================================================================
	@./build/test_random
	@echo ================================================================================
	@echo

clean:
	@rm -f ./build/*


