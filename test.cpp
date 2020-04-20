//#include "routing-filter/routing_filter.h"
#include "two-bits/two-bits.h"
//#include "libcuckoo-master/wrapper.h"

#include<stdlib.h>
#include<set>
#include<time.h>
using namespace std;

#define ELAPSED_SEC(t) ((clock() - t) / (double) CLOCKS_PER_SEC)

int main(int argc, char* argv[]) {

	if(argc != 3) {
		fprintf(stderr, "Provide log of number of slots in filter and number of elements to insert/search for.\n");
		exit(1);
	}
	
	int64_t f_bits = atoi(argv[1]);
	int64_t N = atoi(argv[2]);

	//rfilter table(f_bits, 9);
	tbits table(f_bits, 9);
	//wrapper table;

	srand(time(NULL));

	//Generating vectors of size N for data contained and not contained in the table
	set<int64_t> in_table_set, not_in_table_set;
	while(in_table_set.size() < N) {
		int64_t x = rand();
		in_table_set.insert(x);
	}
	while(not_in_table_set.size() < N) {
		int64_t x = rand();
		if(!in_table_set.count(x)) not_in_table_set.insert(x);
	}
	vector<int64_t> in_table, not_in_table;
	for(int64_t i : in_table_set) 
		in_table.push_back(i);
	for(int64_t i : not_in_table_set)
		not_in_table.push_back(i);

	printf("INSERTIONS\n");
	clock_t t = clock();
	for(int64_t x : in_table)
		if(!table.insert(x)) {
			printf("Failed insert of %ld.\n", x);
			exit(0);
		}
	printf("%f\n", N / ELAPSED_SEC(t));

	printf("QUERIES\n");
	bool errors = false;
	for(int pct = 0; pct <= 4; pct++) {
		printf("%d percent positive checks: ", pct * 25);
		clock_t t = clock();
		for(int i = 0; i < N; i++) {
			int64_t r = rand(), x = rand();
			if(r % 4 < pct) { 
				if(!table.contains(in_table[x % N]))
					printf("Table returned false on positive query for %ld.\n", in_table[x % N]);
			} else if(table.contains(not_in_table[x % N]))
				printf("Table returned true on negative query for %ld.\n", not_in_table[x % N]);
		}
		printf("%f\n", N / ELAPSED_SEC(t));
	}
}
