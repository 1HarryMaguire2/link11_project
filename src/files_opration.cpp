#include "../include/files_opration.h"

// 从文件中读取数据
vector<vector<int>> ReadDataFromFile(const string &filename)
{
    ifstream infile(filename);
    vector<vector<int>> data;
    string line;

    if (!infile.is_open())
    {
        cerr << "failed: " << filename << endl;
        return data;
    }

    while (getline(infile, line))
    {
        vector<int> frame;
        for (char c : line)
        {
            if (c == '0' || c == '1') // 只处理二进制字符
            {
                frame.push_back(c - '0');
            }
        }
        if (frame.size() == 24) // 确保每行是 24 位
        {
            data.push_back(frame);
        }
        else
        {
            cerr << "警告: 跳过非24位数据行: " << line << endl;
        }
    }

    infile.close();
    return data;
}

//写入complex
void Exportdata(const string &filename, const vector<complex<double>> &data)
{
    ofstream outfile(filename);
    for (const auto &value : data)
    {
        outfile << real(value) << " " << imag(value) << endl; // 写入实部和虚部
    }
    outfile.close();
}

// 写入一维数据
void Exportdata(const string &filename, const vector<double> &data)
{
    ofstream outfile(filename);

    if (!outfile.is_open())
    {
        cerr << "failed: " << filename << endl;
        return;
    }

    for (const auto &value : data)
    {
        outfile << value << endl; // 每个值占一行
    }

    outfile.close();
}

// 将二维数据写入文件
void Exportdata(const string &filename, const vector<vector<int>> &data)
{
    ofstream outfile(filename);

    if (!outfile.is_open())
    {
        cerr << "failed: " << filename << endl;
        return;
    }

    for (const auto &frame : data)
    {
        for (int bit : frame)
        {
            outfile << bit;
        }
        outfile << endl; // 每帧一行
    }

    outfile.close();
}
