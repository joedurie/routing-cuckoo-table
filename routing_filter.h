#ifndef _ROUTING_FILTER
#define _ROUTING_FILTER

#include <iostream>
#include <algorithm>
#include <inttypes.h>
#include "gqf.h"
#include "gqf_int.h"
#include "gqf_file.h"
#include <libcuckoo/cuckoohash_map.hh>

using namespace std;

struct rfilter {
	int64_t filter_bits, cuckoo_bits;
	int64_t filter_size, cuckoo_size;
	int64_t fprint_bits, hash_bits;
	
	QF qf;
	libcuckoo::cuckoohash_map<int64_t, int64_t> table;

	rfilter(int64_t fbits, int64_t cbits, int64_t fpbits) {
		filter_bits = fbits;
		cuckoo_bits = cbits;
		filter_size = 1ll << fbits;
		cuckoo_size = 1ll << cbits;
		fprint_bits = fpbits; //includes bit for routing
		hash_bits = fbits + fpbits;
		
		if(!qf_initfile(&qf, filter_size, hash_bits, 0, QF_HASH_INVERTIBLE, 0, "mycqf.file")) {
			fprintf(stderr, "Can't allocate QF.\n");
			abort();
		}
		
		qf_set_auto_resize(&qf, true);
	}
	
	bool insert(int64_t key) {
		int ret = qf_insert(&qf, key, 0, 1, QF_NO_LOCK, true);
		table.insert(key, key);
		return ret >= 0;
	}

	bool contains(int64_t key) {
		bool pos = qf_get_last_bit(&qf, key);
		return table.contains(key, pos);
	}
};

#endif //_ROUTING_FILTER
