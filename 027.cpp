#include <cmath>
#include <iostream>
#include <vector>

using namespace std;
typedef vector<int>::iterator it_t;

int main() {
    static const int MAX = 1000-1, MIN = -MAX;
    vector<int> primes;
    int max_n = 0, max_prod = 0;
    for (int i = 2; i < MAX; i++) {
        bool add = true;
        int sr = floor(sqrt(i));
        for (it_t it = primes.begin(); it != primes.end(); it++) {
            if (*it > sr) break;
            if (0 == i%*it) {
                add = false;
                break;
            }
        }
        if (add) primes.push_back(i);
    }
    for (int a = MIN; a <= MAX; a++) {
        for (int b = MIN; b <= MAX; b++) {
            bool cont = true;
            int n;
            for (n = 0; cont; n++) {
                int val = n*n + a*n + b;
                if (val < 0) val = -val;
                int sr = floor(sqrt(val));
                for (it_t it = primes.begin(); it != primes.end(); it++) {
                    if (*it > sr) break;
                    if (0 == val%*it) {
                        cont = false;
                        break;
                    }
                }
            }
            if (n > max_n) {
                max_n = n;
                max_prod = a*b;
            }
        }
    }
    cout << max_prod << endl;
    return 0;
}
