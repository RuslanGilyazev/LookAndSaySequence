#Syswow 128
#07.07.2014
#Look-and-say sequence
#en.wikipedia.org/wiki/Look-and-say_sequence

if __FILE__ == $0 
  #Проверяем наличие аргумента. При его отсутствии выводим 10 чисел.
  number_of_numbers = 
    if(ARGV[0] != nil)
   	  ARGV[0].to_i    
    else 
      10
    end

  #Начальное значение последовательности.
  number = '1'

  #Выполняем цикл
  1.upto(number_of_numbers) {
    temp_count = 1
	count = 0
	temp_string = ''

    #Выводим число последовательности.
    print number + "\n"

    while count < number.length

      #Сравниваем текущий и следующий символ.
      #При наличии совпадений, увеличиваем значение счетчика.
      while number[count] == number[count + temp_count]
        temp_count = temp_count + 1
      end

      #Заполняем временный массив числами вида:
      #Предыдущее значение последовательности, количество, число 
      temp_string = temp_string.to_s + temp_count.to_s + number[count].to_s

      #Пропускаем посчитанные символы.
        count = count + temp_count
        temp_count = 1
      end

      #Обновляем строку
      number = temp_string
  }
end
