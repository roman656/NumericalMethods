# Gradient descent method with constant step

Gradient descent is a first-order iterative optimization algorithm for finding a local minimum of a differentiable function.

In this implementation, the parameter `a` (sets the gradient descent rate) is constant, so **the method may diverge**. To control such situations, a limit on the maximum number of iterations was added. You can change it depending on the situation. You need to pay attention if the number of completed iterations are equal to the maximum. If you increase the maximum number of iterations and the number of completed iterations still matches it: possibly, the method diverges with the current parameters. As one of the solutions we can consider the following: *adjusting the values of some input parameters*.

Read more about this method [here](https://en.wikipedia.org/wiki/Gradient_descent "Link to Wikipedia").

# Метод градиентного спуска с постоянным шагом

Градиентный спуск — метод нахождения локального минимума или максимума функции с помощью движения вдоль градиента.

В данной реализации параметр `a` (задает скорость градиентного спуска) является постоянным, поэтому **метод может расходиться**. Для контроля подобных ситуаций было введено ограничение на максимальное количество итераций. Вы можете изменять его в зависимости от ситуации. Таким образом, если в результате выполнения программы количество проделанных итераций оказалось равно максимальному, следует обратить на это внимание. Если при увеличении максимального числа итераций количество проделанных все еще совпадает с ним: скорее всего при текущих параметрах метод расходится. В качестве одного из решений данной проблемы можно рассматривать следующее: *корректировка значений некоторых входных параметров*. 

Подробнее о данном методе можно прочитать [тут](https://ru.wikipedia.org/wiki/%D0%93%D1%80%D0%B0%D0%B4%D0%B8%D0%B5%D0%BD%D1%82%D0%BD%D1%8B%D0%B9_%D1%81%D0%BF%D1%83%D1%81%D0%BA "Ссылка на Википедию").
