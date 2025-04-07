#include "../include/physical_layer.h"
//生成五帧前导码,只含有605Hz和2915Hz频率分量
vector<double> GetPrembleCode(double fs, double Rb)
{
    double f_605 = 605;
    double f_2915 = 2915;
    double h_605 = 0.979;                           //605Hz载波振幅
    double h_2915 = 0.489;                          //2915Hz载波振幅
    double T = (1 / Rb) * 30;                       //一帧(30bit)持续时间
    int num_samples = static_cast<int>(T * fs) + 1; //一帧内采样点数

    //5帧内采样时间序列
    vector<double> t_5frame = {0};
    for (int i = 0; i < 5; ++i)
    {
        for (int j = 0; j < num_samples; ++j)
        {
            t_5frame.push_back(i * T + j / fs);
        }
    }
    //前导码中的605Hz频率分量，用于doppler频移校正
    vector<double> signal_605(t_5frame.size());
    for (int i = 0; i < t_5frame.size(); i++)
    {
        signal_605[i] = h_605 * cos(2 * M_PI * f_605 * t_5frame[i]);
    }
    //前导码中的2915Hz频率分量，用于同步
    vector<double> signal_2915(t_5frame.size());
    for (int i = 0; i < 5; i++)
    {
        for (int j = 0; j < num_samples; j++)
        {
            signal_2915.push_back(h_2915 * cos(2 * M_PI * f_2915 * t_5frame[i * T + j] + M_PI * i));
        }
    }
    //前导码
    vector<double> signal_premble(t_5frame.size());
    for (int i = 0; i < t_5frame.size(); i++)
    {
        signal_premble[i] = signal_605[i] + signal_2915[i];
    }

    return signal_premble;
}
