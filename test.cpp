#include "routing_filter.h"

using namespace std;

int main(int argc, char* argv[]) {

	if(argc != 3) {
		fprintf(stderr, "Provide log of number of slots in filter and log of number of cuckoo tables.\n");
		exit(1);
	}
	
	int64_t f_bits = atoi(argv[1]);
	int64_t c_bits = atoi(argv[2]);
	rfilter rf(f_bits, c_bits, 9);

	int n = 10;
	int64_t a[n] = {1, 2, 3, 3333333, 9009009, 23432, 23432, 3, 6, 7};
	int64_t b[n] = {1, 4, 3, 3333333, 9889889, 23432, 11211, 3, 6, 7};

	for(int i = 0; i < n; i++) 
		if(!rf.insert(a[i])) {
			fprintf(stderr, "Failed insert of %ld.\n", a[i]);
			exit(1);
		}

	for(int i = 0; i < n; i++) {
		int64_t v = rf.get(b[i]);
		if(v == -1) fprintf(stdout, "%ld not contained in filter.\n", a[i]);
		else fprintf(stdout, "%ld occurs %ld times in filter.\n", a[i], v);
	}
}
