#include "../include/physical_layer.h"

// 多普勒校正信号
vector<double> Doppler(double Rb, double fs, int M, const vector<double> &phasef)
{
    double T = 1 / Rb * 30; // 一帧的持续时间
    double h_605 = 0.504;   // 多普勒频移幅度, 0.356*根号2
    double fc = 605;        // 对应载波频率
    int num_samples = static_cast<int>(T * fs) + 1;

    vector<double> t_M = {0}; // M帧的时间点
    for (int i = 0; i < M; ++i)
    {
        for (int j = 0; j < num_samples; ++j)
        {
            t_M.push_back(i * T + j / fs);
        }
    }
    int num_samples_Mframe = t_M.size();
    vector<double> signal_605_M(t_M.size());
    for (size_t i = 0; i < t_M.size(); ++i)
    {
        signal_605_M[i] = h_605 * cos(2 * M_PI * fc * t_M[i]);
    }

    return signal_605_M;
}
