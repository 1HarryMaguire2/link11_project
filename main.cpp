#include "include/physical_layer.h"
#include "include/files_opration.h"

int main()
{
    string input_filename = "C:\\Users\\hj\\Desktop\\link11_project\\data\\data.txt";
    string modulated_filename = "C:\\Users\\hj\\Desktop\\link11_project\\data\\modulated.csv";

    //参数设置
    double Rb = 2250;   //比特率
    int N = 45;         //数据帧长度
    double fs = 24000;  //采样率
    int address_id = 3; //地址码，范围1-9，10进制，03（八进制）
    vector<double> phasef = {M_PI / 4, M_PI / 3, M_PI / 6, M_PI / 4, M_PI / 3, M_PI / 6, M_PI / 4, M_PI / 3, M_PI / 6, M_PI / 4, M_PI / 3, M_PI / 6, M_PI / 4, M_PI / 3, M_PI / 6, M_PI / 2};

    vector<vector<int>> input_data = ReadDataFromFile(input_filename); //编码前的数据
    vector<vector<int>> encoded_data(N, vector<int>(30, 0));           // 编码后的数据
    encoded_data = HammingEncode(input_data, N);

    vector<double> modelated_data = ModPiQdpsk(encoded_data, Rb, fs, phasef); // 调制
    Exportdata(modulated_filename, modelated_data);                           // 写入调制后的数据
    return 0;
}
