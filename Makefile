LOC_SRC=cqf-master/cqf-master/src
LOC_OBJ=cqf-master/cqf-master/obj
LOC_H=cqf-master/cqf-master/include
all: test.cpp $(LOC_SRC)/gqf.c $(LOC_SRC)/hashutil.c $(LOC_SRC)/gqf_file.c $(LOC_SRC)/partitioned_counter.c \
	$(LOC_OBJ)/gqf.o $(LOC_OBJ)/hashutil.o $(LOC_OBJ)/gqf_file.o $(LOC_OBJ)/partitioned_counter.o \
	$(LOC_H)/gqf.h $(LOC_H)/hashutil.h $(LOC_H)/gqf_file.h $(LOC_H)/partitioned_counter.h $(LOC_H)/gqf_int.h
	g++ -std=c++11 -pthread -I libcuckoo-master -I cqf-master/cqf-master/include -I cqf-master/cqf-master test.cpp  $(LOC_SRC)/gqf.c $(LOC_SRC)/hashutil.c $(LOC_SRC)/gqf_file.c $(LOC_SRC)/partitioned_counter.c -o test

clean: test
	rm test
