#ifndef _WRAPPER
#define _WRAPPER

#include <iostream>
#include <algorithm>
#include <inttypes.h>
#include <libcuckoo/cuckoohash_map.hh>

using namespace std;

struct wrapper {
	int64_t cuckoo_bits, cuckoo_size;
	
	libcuckoo::cuckoohash_map<int64_t, int64_t> table;

	bool insert(int64_t key) {
		table.insert(key, key);
		return true;
	}

	bool contains(int64_t key) {
		return table.containsSingleThreaded(key);
	}

	double load_factor() { return table.load_factor(); }
};

#endif //_WRAPPER
