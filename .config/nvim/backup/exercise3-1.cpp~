// Напишите короткую программу, которая запрашивает рост в дюймах и преобразует
// их в футы и дюймы. Программа должна использовать символ подчеркивания для
// обозначения позиции, где будет производиться ввод. Для представления
// коэффициента преобразования используйте символьную константу const
#include <iostream>
int main() {
    using namespace std;
    const int In_per_ft{12};
    int height_in_inches{0};
    cout << "Введите ваш рост в дюймах: ___\b\b\b";
    cin >> height_in_inches;
    int feet = height_in_inches / In_per_ft;
    int inches = height_in_inches % In_per_ft;
    cout << "Ваш рост " << feet << " футов и " << inches << " дюйма." << endl;
    return 0;
}
