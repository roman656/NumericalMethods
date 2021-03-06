function HalfDivisionOptimizationMethod
% Метод половинного деления (метод оптимизации).
% Установка формата вывода.
format long
% Очистка экрана.
clc
% Очистка переменных.
clear

% Заданная точность вычислений.
e = 0.001;
% Границы отрезка.
a = 0;
b = 2;
% Текущее количество итераций.
iter = 0;
% Максимальное число итераций (страховка).
max_iter_number = 15;    % Значения от 0 и менее не ставить!
% Исходное уравнение.
f = inline('x.^4 + x.^2 + x - 2');

% Вывод графика.
x = a : e : b;
plot(x, f(x));
grid on;

disp ('Метод половинного деления (метод оптимизации):');
disp (['Отрезок [' num2str(a) ';' num2str(b) ']']);

% Если при заданных границах отрезка необходимая точность вычислений уже
% достигнута, то цикл не будет выполнен ни разу. В таком случае в качестве
% корня выбираем одну из границ отрезка.
if (abs(a - b) < e)
    x = a;
end

while ((abs(a - b) >= e) && (iter < max_iter_number))
    iter = iter + 1;

    % Корень.
    x = (a + b) / 2;

    % Переназначение границ отрезка.
    if (f(x - e) < f(x + e))
        b = x;
    else
        a = x;
    end
end

% Вывод результатов.
disp (['f(x) = ' num2str(f(x))]);
disp (['x = ' num2str(x)]);
disp (['Заданная точность вычислений: ' num2str(e)]);
disp (['Количество итераций: ' num2str(iter)]);
