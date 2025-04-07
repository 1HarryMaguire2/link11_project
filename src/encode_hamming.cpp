//hamming编码实现
#include "../include/physical_layer.h"
#include "../include/files_opration.h"

//单帧编码
//输入：24位信息帧
//输出：30位汉明编码输出
vector<int> HammingEncodeFrame(const vector<int> &input_frame)
{
    //计算校验位
    vector<int> parity_bits(6, 0);
    // parity_29
    parity_bits[5] = accumulate(input_frame.begin() + 11, input_frame.end(), 0) % 2;
    // parity_28
    parity_bits[4] = (accumulate(input_frame.begin() + 4, input_frame.begin() + 11, 0) +
                      accumulate(input_frame.begin() + 18, input_frame.end(), 0)) %
                     2;
    // parity_27
    parity_bits[3] = (accumulate(input_frame.begin() + 1, input_frame.begin() + 4, 0) +
                      accumulate(input_frame.begin() + 7, input_frame.begin() + 11, 0) +
                      accumulate(input_frame.begin() + 14, input_frame.begin() + 18, 0) +
                      accumulate(input_frame.begin() + 22, input_frame.end(), 0)) %
                     2;
    // parity_26
    parity_bits[2] = (input_frame[0] + input_frame[2] + input_frame[3] + input_frame[5] +
                      input_frame[6] + input_frame[9] + input_frame[10] + input_frame[12] +
                      input_frame[13] + input_frame[16] + input_frame[17] + input_frame[20] +
                      input_frame[21]) %
                     2;
    // parity_25
    parity_bits[1] = (input_frame[0] + input_frame[1] + input_frame[3] + input_frame[4] +
                      input_frame[6] + input_frame[8] + input_frame[10] + input_frame[11] +
                      input_frame[13] + input_frame[15] + input_frame[17] + input_frame[19] +
                      input_frame[21] + input_frame[23]) %
                     2;
    ;
    // parity_24
    parity_bits[0] = (accumulate(input_frame.begin(), input_frame.end(), 0) +
                      accumulate(parity_bits.begin() + 1, parity_bits.end(), 0)) %
                     2;
    //编码
    vector<int> encoded_frame = input_frame;
    encoded_frame.insert(encoded_frame.end(), parity_bits.begin(), parity_bits.end());

    return encoded_frame;
}

//H amming编码
vector<vector<int>> HammingEncode(vector<vector<int>> input_data, int N)
{
    string encoded_filename = "C:\\Users\\hj\\Desktop\\link11_project\\data\\encode.csv";

    vector<vector<int>> encoded_data(N, vector<int>(30, 0)); // 编码后的数据
    vector<int> input_frame(24, 0);                          // 输入帧
    vector<int> encoded_frame(30, 0);                        // 编码后的帧
    for (int i = 0; i < N; ++i)
    {
        input_frame = input_data[i];                     // 读取一帧数据
        encoded_frame = HammingEncodeFrame(input_frame); // 编码一帧
        encoded_data[i] = encoded_frame;                 // 存储编码帧
    }
    Exportdata(encoded_filename, encoded_data); //记录编码后的数据

    return encoded_data;
}
