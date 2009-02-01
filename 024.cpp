#include <algorithm>
#include <iostream>

using namespace std;

int main() {
    int seq[] = {0,1,2,3,4,5,6,7,8,9};
    static const int N = sizeof(seq)/sizeof(int);
    for(int i = 0; i < 1000000-1; i++) {
        next_permutation(seq, seq+N);
    }
    for(int i = 0; i < N; i++) {
        cout << seq[i];
    }
    cout << endl;
    return 0;
}
