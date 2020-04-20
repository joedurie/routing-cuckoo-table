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

	rfilter(int64_t fbits, int64_t fpbits) {
		filter_bits = fbits;
		filter_size = 1ll << fbits;
		fprint_bits = fpbits; //includes bit for routing
		hash_bits = fbits + fpbits;
		
		if(!qf_initfile(&qf, filter_size, hash_bits, 0, QF_HASH_DEFAULT, 0, "mycqf.file")) {
			fprintf(stderr, "Can't allocate QF.\n");
			abort();
		}
		
		qf_set_auto_resize(&qf, true);
	}

	bool insert(int64_t key) {
		int64_t val;
		if(table.containsSingleThreaded(key, 0) && table.find(key, val, false) && val == key) return true;
		int ret = qf_insert(&qf, key, 0, 1, QF_NO_LOCK);
		table.insert(&qf, key, key);
		return ret >= 0;
	}

	bool contains(int64_t key) {
		int pos = qf_get_last_bit(&qf, key, 0, QF_NO_LOCK);
		if(pos == 2) return false;
		return table.containsSingleThreaded(key, pos);
	}

	double load_factor() { return table.load_factor(); }
};

#endif //_ROUTING_FILTER
