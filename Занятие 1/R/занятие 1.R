# ls() - Выводит на экран список объектов в текущем рабочем пространстве
# rm("список_объектов") - Удаляет один или несколько объектов из рабочего пространства
# Сочетание клавиш Ctrl+L (мак: cmd + L) - Очищает окно консоли от текста
# rm(list=ls()) - Очищает рабочее пространство


2 + 2 # Сложение.
## [1] 4
10 - 5 # Вычитание.
## [1] 5
10 * 99 # Умножение.
## [1] 990
225 / 15 # Деление, результат - целочисленный.
## [1] 15
10 / 4 # Деление, результат - действительное число.
## [1] 2.5
5 ^ 2 # Возведение в степень(1 вариант).
## [1] 25
5 ** 2 # Возведение в степень(2 вариант).
## [1] 25

11 %/% 3 # Целая часть от деления.
## [1] 3
11 %% 3 # Остаток от деления.
## [1] 2

# Сколько часов?
20 + 10
## [1] 30

(20 + 10) %% 24
## [1] 6

pi # Число Пи.
## [1] 3.141593
cos(pi) # Косинус.
## [1] -1
sin(pi) # Синус.
## [1] 1.224647e-16
exp(1) # Экспонента.
## [1] 2.718282
tan(0) # Тангенс.
## [1] 0
abs(-5) # Модуль.
## [1] 5
sqrt(144) # Корень.
## [1] 12
round(3.4865, digits = 2) # Округление.
## [1] 3.49
factorial(10) # Факториал.
## [1] 3628800

# примеры переменных
a <- 5
number <- 5
this_name_is_too_long <- 5
thisnameisdifficulttoread <- 5

# 2 разные переменные

M <- 99
m <- 66

# типы переменных

# 1. Числовой - numeric/integer/double/complex
# 2. Строковый - character
# 3. Логический - logical
# 4. Категориальный или факторный - factor
# 5. Дата + время - date
# 6. NA - not available
# 7. NaN - not a number

(number <- 5)
## [1] 5
(name <- 'R_studio')
## [1] "R_studio"
(log <- TRUE)
## [1] TRUE
(factor <- factor("Jan"))
## [1] Jan
## Levels: Jan
(date <- Sys.Date())
## [1] "2020-02-11"
(na <- NA)
## [1] NA
(nan <- NaN)
## [1] NaN

#Класс переменной всегда можно проверить с помощью функций class() и typeof().

class(number)
## [1] "numeric"
class(name)
## [1] "character"
class(log)
## [1] "logical"
class(factor)
## [1] "factor"
class(date)
## [1] "Date"
class(na)
## [1] "logical"
class(nan)
## [1] "numeric"

#Также можно воспользоваться семейством функций is.*, 
#чтобы узнать, принадлежит ли переменная к опреденному типу.

is.numeric(number)
## [1] TRUE
is.character(name)
## [1] TRUE
is.logical(log)
## [1] TRUE
is.factor(factor)
## [1] TRUE
is.na(na)
## [1] TRUE

# Cемейство функций as.*, с помощью которых можно менять тип переменной.

class(number)
## [1] "numeric"
number <- as.character(number)
class(number)
## [1] "character"

#  стоит обратить внимание на сравнение чисел с плавающей точкой (double)
0.1 + 0.05 == 0.15 # результат FALSE
all.equal(0.1+0.05, 0.15) # результат TRUE

#Логические операторы

# || - или
# && - и
# ! - не

# Про 
# быстрые 
# комментарии (Shift+Ctrl+C)

# Ctrl+Shift+Enter
# Ctrl+A + Ctrl+Enter

# про debug

vek <- c(5,6,7)

test_function <- function(vek){
  for (i in 1:length(vek)) {
    vek[i] <- 2
  }
  print(vek)
  return(vek)
}

test_function(vek)

