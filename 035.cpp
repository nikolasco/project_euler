#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

int main() {
    static const int MAX = 1000000;
    vector<int> primes;
    for (int i = 2; i < MAX; i++) {
        bool p = true;
        for (vector<int>::iterator it = primes.begin(); it != primes.end(); it++) {
            if (0 == i % *it) {
                p = false;
                break;
            }
        }
        if (p) primes.push_back(i);
    }
    int count = 0;
    for (vector<int>::iterator it = primes.begin(); it != primes.end(); it++) {
        int len = 0, pow = 1, tmp;
        for (tmp = *it; 0 != tmp; tmp /= 10) {
            len++;
            pow *= 10;
        }
        pow /= 10;
        tmp = *it;
        bool okay = true;
        for (int j = 0; j < len; j++) {
            tmp = (tmp%10) * pow + tmp/10;
            if (!binary_search(primes.begin(), primes.end(), tmp)) {
                okay = false;
                break;
            }
        }
        if (okay) count++;
    }
    cout << count << endl;
    return 0;
}
