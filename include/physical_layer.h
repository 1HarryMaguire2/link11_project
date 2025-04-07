#ifndef PHY_LAYER_H
#define PHY_LAYER_H
#define _USE_MATH_DEFINES

#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <numeric>
#include <vector>
#include <complex>
#include <cmath>

using namespace std;

//Hamming编码
vector<vector<int>> HammingEncode(vector<vector<int>> input_data, int N);
//调制
vector<double> ModPiQdpsk(const vector<vector<int>> &input_frame, double Rb, double fs, const vector<double> &phasef);
//多普勒校正信号
vector<double> Doppler(double Rb, double fs, int M, const vector<double> &phasef);
//五帧前导码,只含有605Hz和2915Hz频率分量
vector<double> GetPrembleCode(double fs, double Rb);
//生成相位参考帧（一帧）,16音信号参考相位为phasef[i]
vector<double> PhaseFrame(vector<double> phasef, double Rb, double fs);

#endif // PHY_LAYER_H
