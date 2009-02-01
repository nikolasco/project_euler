#include <iostream>
#include <vector>

using namespace std;
typedef unsigned long long int ull;

int main() {
    static const ull MAX = 28123;
    ull sum = 0;
    vector<ull> abu;
    vector<bool> is_abu(MAX+1);
    for(ull i = 1; i <= MAX; i++) {
        ull sum_d = 0;
        for(ull j = 1; j < i; j++) {
            if(0 == i%j) sum_d += j;
        }
        if(sum_d > i) {
            abu.push_back(i);
            is_abu[i] = true;
        }
    }
    for(ull i = 1; i < MAX; i++) {
        bool add = true;
        for(vector<ull>::const_iterator it = abu.begin(); it != abu.end(); it++) {
            if(*it <= i && is_abu[i-*it]) {
                add = false;
                break;
            }
        }
        if(add) sum += i;
    }
    cout << sum << endl;
    return 0;
}
