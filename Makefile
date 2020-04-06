
LOC_SRC=cqf-master/cqf-master/src
LOC_OBJ=cqf-master/cqf-master/obj
LOC_H=cqf-master/cqf-master/include
F1=routing-filter
F2=two-bits

all: 
	@echo specify \"routing\", \"two\" or \"hash-table\" as table type

routing: test.cpp $(F1)/$(LOC_SRC)/gqf.c $(F1)/$(LOC_SRC)/hashutil.c $(F1)/$(LOC_SRC)/gqf_file.c $(F1)/$(LOC_SRC)/partitioned_counter.c \
	$(F1)/$(LOC_OBJ)/gqf.o $(F1)/$(LOC_OBJ)/hashutil.o $(F1)/$(LOC_OBJ)/gqf_file.o $(F1)/$(LOC_OBJ)/partitioned_counter.o
	g++ -w -std=c++11 -pthread -I $(F1)/libcuckoo-master -I $(F1)/$(LOC_H) -I $(F1)/cqf-master/cqf-master test.cpp  $(F1)/routing_filter.h $(F1)/$(LOC_SRC)/gqf.c $(F1)/$(LOC_SRC)/hashutil.c $(F1)/$(LOC_SRC)/gqf_file.c $(F1)/$(LOC_SRC)/partitioned_counter.c -o test

two: test.cpp $(F2)/$(LOC_SRC)/gqf.c $(F2)/$(LOC_SRC)/hashutil.c $(F2)/$(LOC_SRC)/gqf_file.c $(F2)/$(LOC_SRC)/partitioned_counter.c \
	$(F2)/$(LOC_OBJ)/gqf.o $(F2)/$(LOC_OBJ)/hashutil.o $(F2)/$(LOC_OBJ)/gqf_file.o $(F2)/$(LOC_OBJ)/partitioned_counter.o
	g++ -w -std=c++11 -pthread -I $(F2)/libcuckoo-master -I $(F2)/$(LOC_H) -I $(F2)/cqf-master/cqf-master test.cpp  $(F2)/$(LOC_SRC)/gqf.c $(F2)/$(LOC_SRC)/hashutil.c $(F2)/$(LOC_SRC)/gqf_file.c $(F2)/$(LOC_SRC)/partitioned_counter.c -o test

hash-table: test.cpp
	g++ -std=c++11 -pthread -I libcuckoo-master test.cpp -o test
	
clean:
	rm test mycqf.file
