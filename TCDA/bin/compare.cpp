#include <iostream>
#include <fstream>
#include <cstdlib>
#include <vector>
#include <numeric>
#include <iterator>
using namespace std;

int main(int argc, char** argv) 
{
    // verify parameters
    if(argc != 4) 
    {
        cerr << "Usage: ./a.exe [colcount] [in_filename] [out_filename]";
        cerr << "Example: ./a.exe 2 input.txt output.txt";
        return -1;
    }
    
    // init
    int colNum = atoi(argv[1]);
    vector<double> *ivPtr = new vector<double>[colNum];
    for(int i = 0; i != colNum; i++) 
    {
        ivPtr[i] = vector<double>();
    }
    string inFile = argv[2];
    string outFile = argv[3];
    
    // open file
    fstream fp, fp2;
    fp.open(inFile.c_str(), fstream::in);
    fp2.open(outFile.c_str(), fstream::out);
    
    double data;
    int cycle = 30*colNum;
    for(int i = 0; fp >> data; i++) 
    {
        // read and save to corresponding vector
        ivPtr[i%colNum].push_back(data);
        
        if(i % cycle == cycle - 1) {
            for(int j = 0; j != colNum; j++) 
            {
                fp2 << fixed << accumulate(ivPtr[j].begin(), ivPtr[j].end(), 0.0) 
                                 / ivPtr[j].size() << "\t";
                ivPtr[j].clear();
            }
            fp2 << endl;
        }
    }
 
    // close file
    fp.close();
    fp2.close();

    return 0;
}
