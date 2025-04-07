// pi/4DQPSK调制
//  16音调制
#include "../include/physical_layer.h"
#include "../include/files_opration.h"

// 格雷编码映射
int Gray_Map(int value)
{
    switch (value)
    {
    case 0:
        return 1;
    case 1:
        return 2;
    case 2:
        return 0;
    default:
        return value;
    }
}

// pi/4DQPSK调制
vector<complex<double>> ModDpsk(const vector<int> data)
{
    vector<complex<double>> modulated_data(data.size());
    vector<double> phase_offset = {-3 * M_PI / 4, 3 * M_PI / 4, M_PI / 4, -M_PI / 4}; // 相位偏移
    // 初始化相位
    double phase = 0.0;
    for (size_t i = 0; i < data.size(); ++i)
    {
        phase += phase_offset[data[i]]; // 累加相位偏移
        modulated_data[i] = polar(1.0, phase);
    }
    return modulated_data;
}

//16音调制
vector<double> ModPiQdpsk(const vector<vector<int>> &input_frame, double Rb, double fs, const vector<double> &phasef)
{
    //参数设置
    vector<double> fc = {605, 935, 1045, 1155, 1265, 1375, 1485, 1595, 1705, 1815, 1925, 2035, 2145, 2255, 2365, 2915}; //载波频率
    double h_tone = 0.252;                                                                                              // 15音幅度,有效值0.178
    double T = 1 / Rb * 30;                                                                                             //帧持续时间
    int n = 15;                                                                                                         //分组数
    int num_samples = static_cast<int>(T * fs) + 1;                                                                     //每帧采样点数
    vector<double> t(num_samples);
    double ts = (1 / fs);
    for (int i = 0; i < num_samples; ++i)
    {
        t[i] = i * ts;
    }

    string dqpsk_filename = "C:\\Users\\hj\\Desktop\\link11_project\\data\\carriers\\dqpsk_"; // 调试用，导出调制信号

    //输入数据分组调制
    int M = input_frame.size();
    vector<vector<double>> signal_Mtones_arry(n, vector<double>(M * num_samples, 0.0)); // 16音调制信号
    vector<double> signal_base(M * num_samples, 0.0);                                   // 基带信号
    for (int i = 0; i < 29; i += 2)
    {
        vector<int> dec_data(M, 0);
        for (int j = 0; j < M; ++j)
        {
            dec_data[j] = input_frame[j][i] * 2 + input_frame[j][i + 1]; // 二进制到十进制转换
        }

        //格雷映射
        for (int j = 0; j < M; ++j)
        {
            dec_data[j] = Gray_Map(dec_data[j]);
        }

        // DQPSK调制
        vector<complex<double>> mod_dpsk = ModDpsk(dec_data);
        Exportdata(dqpsk_filename + to_string((i + 2) / 2) + ".csv", mod_dpsk); // 调试用，导出调制数据

        // 生成M个码元的单音调制信号 signal_one_tone_arry[M][num_samples]
        vector<vector<double>> signal_one_tone_arry(M, vector<double>(num_samples, 0.0));
        for (int k = 0; k < M; ++k)
        {
            for (int m = 0; m < num_samples; ++m)
            {
                signal_one_tone_arry[k][m] = h_tone * real(mod_dpsk[k] * exp(complex<double>(0, 1) * (2 * M_PI * fc[(i + 2) / 2] * t[m] + phasef[(i + 2) / 2])));
            }
        }
        //单音信号向量  [1][M * num_samples]
        vector<double> signal_one_tone; // 单音信号
        for (int k = 0; k < M; ++k)
            for (int m = 0; m < num_samples; ++m)
                signal_one_tone.push_back(signal_one_tone_arry[k][m]);
        // 16音调制信号矩阵 [n][M * num_samples]
        signal_Mtones_arry[i / 2] = signal_one_tone; // 将单音信号复制到16音调制信号矩阵中
    }

    // 多音相加得到基带信号signal_base [1][M * num_samples]
    for (int k = 0; k < M * num_samples; ++k)
    {
        for (int m = 0; m < n; ++m)
        {
            signal_base[k] += signal_Mtones_arry[m][k]; // 将16音调制信号矩阵中的每一行相加
        }
    }

    // 添加多普勒效应
    vector<double> doppler_effect = Doppler(Rb, fs, M, phasef);

    for (int i = 0; i < M * num_samples; ++i)
    {
        signal_base[i] = signal_base[i] + doppler_effect[i];
    }

    return signal_base;
}
