# Счетчик для повторение выполнения программы
n = "y"

while n == "y" do

  # Ввод 1 числа
  puts "Первое число: "
  number1 = STDIN.gets.to_f

  # Ввод 2 числа
  puts "Второе число: "
  number2 = STDIN.gets.to_f

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
      puts "Результат: " + (result = number1 / number2) .to_s
    # Был введен не корректный символ/знак
  else
    puts "Вы ввели не корректный знак"
  end

  # Запрос на повторение выполнения программы
  puts "Повторить ?(y/n)"
  n = STDIN.gets.chomp
end

