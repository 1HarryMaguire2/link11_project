#ifndef FILES_OPRATION_H
#define FILES_OPRATION_H

#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <vector>
#include <complex>

using namespace std;

// 从文件中读取数据
vector<vector<int>> ReadDataFromFile(const string &filename);

//写入complex
void Exportdata(const string &filename, const vector<complex<double>> &data);

// 写入一维数据
void Exportdata(const string &filename, const vector<double> &data);

// 将二维数据写入文件
void Exportdata(const string &filename, const vector<vector<int>> &data);

#endif // FILES_OPRATION_H
