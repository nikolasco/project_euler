#include <algorithm>
#include <cmath>
#include <iostream>
#include <vector>

using namespace std;

typedef unsigned long long int ull;

vector<ull> primes;

bool is_prime(ull n) {
    if (n < 2) return false;
    if(n <= primes.back()) {
        return binary_search(primes.begin(), primes.end(), n);
    }
    ull sr = ceil(sqrt(n));
    // leveraging the fact that we'll be iterating in-order
    for (vector<ull>::iterator it = primes.begin(); it != primes.end() && *it <= sr; it++) {
        if (0 == n % *it) return false;
    }
    primes.push_back(n);
    return true;
}

int main() {
    static const ull TO_FIND = 11;
    ull count = 0, sum = 0;
    primes.push_back(2);
    primes.push_back(3);
    primes.push_back(5);
    primes.push_back(7);
    for (ull i = 10; count < TO_FIND; i++) {
        bool p = true;
        ull tmp = i;
        while (tmp) {
            if (!is_prime(tmp)) { p = false; break; }
            tmp /= 10;
        }
        tmp = i;
        ull pow10 ;
        for (pow10 = 1; pow10 < i; pow10 *= 10) /*nothing*/;
        while (tmp) {
            if (!is_prime(tmp)) { p = false; break; }
            pow10 /= 10;
            tmp %= pow10; // already checked orig i previously
        }
        if (p) {
            sum += i;
            count++;
        }
    }
    cout << sum << endl;
    return 0;
}
