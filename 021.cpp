#include <iostream>
#include <vector>

using namespace std;
typedef unsigned long long int ull;

int main() {
    static const ull MAX = 10000;
    ull sum = 0;
    vector<ull> sum_d(MAX+1);
    for(ull i = 1; i <= MAX; i++) {
        for(ull j = 1; j < i; j++) {
            if(0 == i%j) sum_d[i] += j;
        }
    }
    for(ull i = 1; i < MAX; i++) {
        for(ull j = i+1; j <= MAX; j++) {
            if( sum_d[i] == j && sum_d[j] == i ) sum += i+j;
        }
    }
    cout << sum << endl;
    return 0;
}
