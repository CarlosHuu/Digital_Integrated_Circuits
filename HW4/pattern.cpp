# include <iostream>
using namespace std;
string toBinary(int n);


int main(){

    for (int i = 0, j=0; i<=15,j<=15 ; i++, j++){
        cout << i*39 <<"  "<<  toBinary(15-j) <<" "<< toBinary(j)<<" "<< (j+1)%2 <<endl;
    }
    
    return 0;
}


string toBinary(int n) {
    string r;
    
    // 處理數字太大的情況，只取最後4位
    n = n & 0xF;  
    
    // 轉換成二進位
    for(int i = 0; i < 4; i++) {
        r = (n % 2 == 0 ? "0" : "1") + r;
        n /= 2;
    }
    
    return r;
}