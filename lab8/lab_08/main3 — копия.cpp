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
        fmul five         // �������� x �� 5 (5*x)
        fadd              // ������� x^2 � 5*x
        fsin              // ��������� �����
        fstp res          // ��������� ��������� �� ����� FPU � ���������� result
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
double method_half_del(double low, double high, int max_iter, double eps = EPS, double (*pf)(double x))
{
    // ���������� ��������
    int n = 0;
    // ��������� �����������
    double mid;
    if (f(low) > f(high))
        swap(low, high);
    double f_now;
    double two = 2.0;
    double high1 = high, low1 = low;
    __asm {
        fld high1
        fld low1
        fcomip st(0), st(1)
        jc skip_change
        fst high1
        fst low1
        skip_change:
            fstp st(0)
            fstp st(0)
        jmp change_mid
        // while (fabs(f(mid)) > eps && n <= max_iter) ���� �������� ����� ��������� ������ �������� ���� ������������
        while_eps:
            fld f_now
            fabs
            fld eps
            fcomip st(0), st(1)
            jnc fin_while
            fstp st(0)
            fld n
            fld max_iter
            fcomip st(0), st(1)
            jc fin_while
            fstp st(0)
            fld f_now                       // ��������� �������� f_now �� ������� ����� FPU
            fldz                            // ��������� 0 �� ������� ����� FPU
            fcomip st(0), st(1)             // �������� ��������� � 0 � ���������� ����� � ������������ � �����������
            jc greater_than_zero               // ���� > ����, ������� � ����� greater_than_zero
            jmp less_than_zero           // �����, ������� � ����� less_than_zero   

            greater_than_zero :
                fstp st(0)
                fld mid                     // ��������� �������� mid �� ������� ����� FPU
                //fst more2
                fstp high1                   // ��������� mid � high(�������� ������� ��������)
                jmp change_n                  // ��������� �������� ����������

            less_than_zero :
                fstp st(0)
                fld mid                     // ��������� �������� mid �� ������� ����� FPU
                //fst more1
                fstp low1                    // ��������� mid � low(�������� ������� ��������)
            
            change_n :
                inc n // ���������� �������� ���������� �������� n += 1;
            change_mid:
                fld low1                     // ��������� �������� low �� ������� ����� FPU
                fld high1                    // ��������� �������� high �� ������� ����� FPU
                fadd                        // ������� low � high � �������� ��������� �� ������� �����
                fdiv two                    // ��������� ����� �� 2
                fstp qword ptr[mid]                    // ��������� ��������� � mid (�������� ������� ��������)
                fstp st(0)
            fld mid                    // ��������� �������� mid �� ������� ����� FPU
            call pf                      // ������� ������� f
            fstp f_now                 // ��������� ��������� � ���������� f_now
            jmp while_eps
        fin_while:
    }
    // ������� ���������� ������ ��� ������ ���������� ��� �������� �� ������������ ���������� ��������
    if (fabs(f(mid)) > eps && n > max_iter)
        throw runtime_error("Too many iterations.");
    return mid;
}


int main(void)
{
    try
    {
        // ������� ��������� ����� ����������� �������
        //double res = method_half_del(-0.5, 0.5, 100);
        //double res = method_half_del(-1, -0.5, 100);
        double res = method_half_del(1.75, 1.9, 100, &f);
        cout << "Result = " << res << endl;
    }
    catch (exception& exc)
    {
        cout << "Error! " << exc.what() << endl;
    }
	return 0;
}