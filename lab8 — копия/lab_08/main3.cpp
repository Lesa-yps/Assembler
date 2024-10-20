// ����������� ����� ����� ������� sin(x^2 + 5*x) ������� ����������� �������
// �� �������� ������� � �������� ����������� ��������.

#include <iostream>
#include <cmath>
#include <exception>

using namespace std;

#define EPS 0.0001

double f(double x)
{
    //return x + 0.3;
    //return sin(x*x+5*x);
    
    double five = 5.0;
    double res;
    __asm {
        fld x             // ��������� x �� ������� ����� FPU
        fmul x            // �������� x �� ���� ���� (x^2)
        fld x             // ��������� x �� ������� ����� FPU
        fmul five  // �������� x �� 5 (5*x)
        fadd             // ������� x^2 � 5*x
        fsin              // ��������� �����
        fstp res            // ��������� ��������� �� ����� FPU � ���������� result
    }
    return res;
}

void swap(double &low, double &high)
{
    double tmp = low;
    low = high;
    high = tmp;
}

// ������� ��������� ����� ����������� �������
double method_half_del(double low, double high, int max_iter, double eps = EPS)
{
    // ���������� ��������
    int n = 0;
    // ��������� �����������
    double mid = (low + high) / 2;
    if (f(low) > f(high))
        swap(low, high);
    // ���� �������� ����� ��������� ������ �������� ���� ������������
    while (fabs(f(mid)) > eps && n <= max_iter)
    {
        // ���������� ����� ������
        double f_now = f(mid);
        double two = 2.0;
        //double more1 = 0, more2 = 0;
        double high1 = high, low1 = low;
        __asm {
            fld f_now                       // ��������� �������� f_now �� ������� ����� FPU
            fldz                            // ��������� 0 �� ������� ����� FPU
            fcomip st(0), st(1)             // �������� ��������� � 0 � ���������� ����� � ������������ � �����������
            jc greater_than_zero               // ���� ������ ����, ������� � ����� less_than_zero
            jmp less_than_zero           // �����, ������� � ����� greater_than_zero    

            greater_than_zero :
                fstp st(0)
                fld mid                     // ��������� �������� mid �� ������� ����� FPU
                //fst more2
                fstp high1                   // ��������� mid � high(�������� ������� ��������)
                jmp end_if1                  // ��������� �������� ����������

            less_than_zero :
                fstp st(0)
                fld mid                     // ��������� �������� mid �� ������� ����� FPU
                //fst more1
                fstp low1                    // ��������� mid � low(�������� ������� ��������)

            end_if1:
                fld low1                     // ��������� �������� low �� ������� ����� FPU
                fld high1                    // ��������� �������� high �� ������� ����� FPU
                fadd                        // ������� low � high � �������� ��������� �� ������� �����
                fdiv two                    // ��������� ����� �� 2
                fstp qword ptr[mid]                    // ��������� ��������� � mid (�������� ������� ��������)
                fstp st(0)
        }
        high = high1, low = low1;
        /*if (f_now < 0)
            low = mid;
        else
            high = mid;
        mid = (low + high) / 2;*/
        //cout << more1 << " " << more2 << endl;
        //cout << "f_now = " << f_now << " low = " << low << " high = " << high << " mid = " << mid << " n = " << n << endl;
        // ���������� �������� ���������� ��������
        n += 1;
    }
    // ������� ���������� ������ ��� ������ ���������� ��� �������� �� ������������ ���������� ��������
    if (fabs(f(mid)) > eps && n > max_iter)
        throw runtime_error("Too many iterations.");
    return mid;
}


int _main(void)
{
    try
    {
        // ������� ��������� ����� ����������� �������
        //double res = method_half_del(-0.5, 0.5, 100);
        double res = method_half_del(-4, -0.5, 100);
        cout << "Result = " << res << endl;
    }
    catch (exception& exc)
    {
        cout << "Error! " << exc.what() << endl;
    }
	return 0;
}