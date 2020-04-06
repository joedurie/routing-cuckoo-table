#include "routing-filter/routing_filter.h"
//#include "two-bits/two-bits.h"
//#include "libcuckoo-master/wrapper.h"

#include<stdlib.h>
#include<set>
#include<time.h>
using namespace std;

int main(int argc, char* argv[]) {

	if(argc != 3) {
		fprintf(stderr, "Provide log of number of slots in filter and number of elements to insert/search for.\n");
		exit(1);
	}
	
	int64_t f_bits = atoi(argv[1]);
	int64_t N = atoi(argv[2]);

	rfilter table(f_bits, 9), table2(f_bits, 9), table3(f_bits, 9);
	//tbits table(f_bits, 9), table2(f_bits, 9), table3(f_bits, 9);
	//wrapper table, table2, table3;

	srand(time(NULL));

	fprintf(stdout, "CORRECTNESS CHECKS\n");
	set<int64_t> actual_set;
	for(int i = 0; i < N; i++) {
		int64_t x = rand();
		actual_set.insert(x);
		if(!table.insert(x)) {
			fprintf(stdout, "Failed insert of %ld.\n", x);
			exit(0);
		}
	}
	bool errors = false;
	for(int i = 0; i < N; i++) {
		int64_t x = rand();
		bool b1 = actual_set.count(x);
		bool b2 = table.contains(x);
		if(b1 != b2) {
			fprintf(stdout, "Table incorrectly returns %d when queried for containment of %ld.\n", b2, x); 
			errors = true;
		}
	}
	if(!errors) fprintf(stdout, "Table matches std::set on all inserts/contains checks\n");
	
	fprintf(stdout, "TIME CHECKS\n");
	clock_t t = clock();
	for(int i = 0; i < N; i++) {
		int64_t x = rand();
		table2.insert(x);
	}
	double time = (clock() - t) / (double)CLOCKS_PER_SEC;
	fprintf(stdout, "Time to do %ld inserts: %f sec\n", N, time);	

	for(double lf = .05; lf < .95; lf += 0.05) {
		while(table3.load_factor() < lf) {
			int64_t x = rand();
			table3.insert(x);
		}
		clock_t t = clock();
		for(int i = 0; i < N; i++) {
			int64_t x = rand();
			table3.contains(x);
		}
		double time = (clock() - t) / (double)CLOCKS_PER_SEC;
		fprintf(stdout, "Time to do %ld containment checks at load factor %f: %f sec\n", N, lf, time);
	}
}
