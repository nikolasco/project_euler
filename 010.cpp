#include <iostream>
#include <vector>
#include <cmath>

using namespace std;

typedef unsigned long long ull;

vector<ull> primes;
ull sum = 0;
static const ull MAX = 2000000;

void test(ull i) {
    if (i > MAX) return;
    ull sr = floor(sqrt((double) i));
    for(vector<ull>::iterator it = primes.begin(); it != primes.end(); it++) {
        if (*it > sr) break;
        if (0 == i%(*it)) return;
    }
    primes.push_back(i);
    sum += i;
}

int main() {
    for (ull i = 2; i < MAX; i++) {
        test(i);
    }
    cout << sum << endl;
}
