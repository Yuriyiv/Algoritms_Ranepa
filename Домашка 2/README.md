## Задача 1 (10 баллов)

Дано действительное положительное число a и целое неотрицательное число n. 
Вычислить <a href="https://www.codecogs.com/eqnedit.php?latex=a^n" target="_blank"><img src="https://latex.codecogs.com/gif.latex?a^n" title="a^n" /></a>, не используя циклы, возведение в степень и другие встроенные функции. 

Можно использовать только рекуррентное соотношение <a href="https://www.codecogs.com/eqnedit.php?latex=a^n=a*a^{(n-1)}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?a^n=a*a^{(n-1)}" title="a^n=a*a^{(n-1)}" /></a>


## Задача 2 (до 30 баллов)

Дана матрица размера ixj, где i - количество строк, j - количество столбцов. Необходимо найти определитель этой матрицы (или выдать сообщение о том, что его нет):
* a) если i = 2 и j = 2 - **5 баллов**
* б) если i = 1 и j = 4 - **3 балла**
* в) если i = 3 и j = 3 - **5 баллов**
* г) если i = 4 и j =4 - **5 баллов**
* д) в общем случае (для любого натурального i или j) - **30 баллов** - баллы за этот пункт включают себя баллы за пункты а-г

## Задача 3 (15 баллов)

Дана матрица размера ixj, где i - количество строк, j - количество столбцов, состоящая из элементов <a href="https://www.codecogs.com/eqnedit.php?latex=a_{ij}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?a_{ij}" title="a_{ij}" /></a>. 

Необходимо выдать матрицу размера ixj, в которой каждый элемент <a href="https://www.codecogs.com/eqnedit.php?latex=b_{ij}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?b_{ij}" title="b_{ij}" /></a>
задается как <a href="https://www.codecogs.com/eqnedit.php?latex=a_{ij}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?a_{ij}" title="a_{ij}" /></a> + накопленная сумма предыдущих элементов

Пример: матрица А подается на вход, возвращается матрица B

<a href="https://www.codecogs.com/eqnedit.php?latex=A=\begin{pmatrix}&space;1&space;&&space;2&space;&&space;3\\&space;4&space;&&space;5&space;&&space;6\\&space;7&space;&&space;8&space;&&space;9&space;\end{pmatrix}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?A=\begin{pmatrix}&space;1&space;&&space;2&space;&&space;3\\&space;4&space;&&space;5&space;&&space;6\\&space;7&space;&&space;8&space;&&space;9&space;\end{pmatrix}" title="A=\begin{pmatrix} 1 & 2 & 3\\ 4 & 5 & 6\\ 7 & 8 & 9 \end{pmatrix}" /></a>

<a href="https://www.codecogs.com/eqnedit.php?latex=B=\begin{pmatrix}&space;1&space;&&space;3&space;&&space;6\\&space;10&space;&&space;15&space;&&space;21\\&space;28&space;&&space;36&space;&&space;45&space;\end{pmatrix}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?B=\begin{pmatrix}&space;1&space;&&space;3&space;&&space;6\\&space;10&space;&&space;15&space;&&space;21\\&space;28&space;&&space;36&space;&&space;45&space;\end{pmatrix}" title="B=\begin{pmatrix} 1 & 3 & 6\\ 10 & 15 & 21\\ 28 & 36 & 45 \end{pmatrix}" /></a>

Как можно заметить, первый элемент матрицы B равен первому элементу матрицы А, т.е. одному, второй элемент матрицы B = первому элементу + второму элементу матрицы А (1+2=3), третий элемент матрицы B = первому + второму + третьему элементу матрицы А и т.д.
