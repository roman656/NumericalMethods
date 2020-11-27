# Half division method

Half division is the simplest numerical method.

It is important to select correctly `[a;b]`, because there may be several roots of the equation. To control exceptional situations, a limit on the maximum number of iterations was added. You can change it depending on the situation. You need to pay attention if the number of completed iterations are equal to the maximum. If you increase the maximum number of iterations and the number of completed iterations still matches it - possibly, you need to adjust the values of some input parameters.

Read more about this method [here](https://en.wikipedia.org/wiki/Bisection_method "Link to Wikipedia").

The algorithm was implemented on **MATLAB R2020b**.

# Метод половинного деления

Метод половинного деления - простейший численный метод для решения нелинейных уравнений вида: `f(x) = 0`.

Корней уравнения может быть несколько, поэтому важно верно подобрать границы отрезка `[a;b]`. Для контроля исключительных ситуаций было введено ограничение на максимальное количество итераций. Вы можете изменять его в зависимости от ситуации. Таким образом, если в результате выполнения программы количество проделанных итераций оказалось равно максимальному, следует обратить на это внимание. Если при увеличении максимального числа итераций количество проделанных все еще совпадает с ним - скорее всего необходима корректировка значений некоторых входных параметров.

Подробнее о данном методе можно прочитать [тут](https://ru.wikipedia.org/wiki/%D0%9C%D0%B5%D1%82%D0%BE%D0%B4_%D0%B1%D0%B8%D1%81%D0%B5%D0%BA%D1%86%D0%B8%D0%B8 "Ссылка на Википедию").

Алгоритм реализован на **MATLAB R2020b**.
