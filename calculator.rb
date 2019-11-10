# Счетчик для повторение выполнения программы
n = "y"

while n == "y" do

  # Ввод 1 числа
  puts "Первое число: "
  number1 = STDIN.gets.to_i

  # Ввод 2 числа
  puts "Второе число: "
  number2 = STDIN.gets.to_i

  # Ввод знака
  puts "Выберите операцию (+ - * /)"
  operation = STDIN.gets.chomp

  # Какой знак был введен ?
  case operation
  when '+'
    # Вывод результата
    puts "Результат: " + (result = number1 + number2) .to_s
  when '-'
    puts "Результат: " + (result = number1 - number2) .to_s
  when '*'
    puts "Результат: " + (result = number1 * number2) .to_s
  when '/'
    # Проверка на возможную ошибку
   begin
     puts "Результат: " + (result = number1 / number2) .to_s
     # ZeroDivisionError - ошибка при делении на 0
   rescue ZeroDivisionError
     puts "На 0 делить нельзя!"
   end
    # Был введен не корректный символ/знак
  else
    puts "Вы ввели не корректный знак"
  end

  # Запрос на повторение выполнения программы
  puts "Повторить ?(y/n)"
  n = STDIN.gets.chomp
end

