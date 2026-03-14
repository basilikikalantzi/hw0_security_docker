#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

int main(int argc, char* argv[]){

    int mov;
    cin >> mov;
    vector<pair<int,int>>  movies;

    int x;
    int y;
    for(int i=0 ; i<mov ; i++){

        cin>>x;
        cin>>y;
        movies.push_back({y,x});
    
    }
    sort(movies.begin(), movies.end());

    int last_end=0;
    int count=0;

    for(int i=0 ; i<mov ; i++){

        if(movies[i].second >=last_end){
            count++;
            last_end = movies[i].first;
        }

    }
    cout << count<<"\n";
}