#include "../include/physical_layer.h"

//生成相位参考帧（一帧）,16音信号参考相位为phasef[i]
vector<double> PhaseFrame(vector<double> phasef, double Rb, double fs)
{
    double h_605 = 0.504;                                                                                               //多普勒频移幅度
    double h_tone = 0.252;                                                                                              //多音信号幅度
    vector<double> fc = {605, 935, 1045, 1155, 1265, 1375, 1485, 1595, 1705, 1815, 1925, 2035, 2145, 2255, 2365, 2915}; //载波频率
    double T = (1 / Rb) * 30;                                                                                           //一帧持续时间
    int num_samples = static_cast<int>(T * fs) + 1;                                                                     //一帧内采样点数
    vector<double> t(num_samples);                                                                                      //一帧内采样时间点
    for (int i = 0; i < num_samples; ++i)
    {
        t[i] = i * fs;
    }

    //相位参考帧信号
    vector<double> signal_phase_frame(num_samples, 0);
    for (int i = 0; i < num_samples; i++)
    {
        for (int j = 1; j < 16; j++)
        {
            signal_phase_frame[i] += h_tone * cos(2 * M_PI * t[i] + phasef[j]);
        }
        signal_phase_frame[i] += h_605 * cos(2 * M_PI * t[i] + phasef[0]);
    }
    return signal_phase_frame;
}
