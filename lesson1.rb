require 'date'
class Lesson1
  def sum(val = 0)
    tmp = val.to_s
    sum = 0
    tmp.each_char do |s|
      sum += s.to_i
    end
    sum
  end

  def age(birthday)
    birth = Date.parse(birthday)
    days = (Date.today - birth).to_i
    puts "Я живу #{days / 365} года или #{days} дней или #{days * 24} часов /
    или #{days * 24 * 60} минут или #{days * 24 * 60 * 60} секунд"
  rescue ArgumentError, TypeError
    'Invalid Date Format'
  end

  def name
    puts 'Enter your surname:'
    surname = gets.chomp
    puts 'Enter your name:'
    name = gets.chomp
    puts 'Enter your patronymic:'
    patronymic = gets.chomp
    "Hello #{surname} #{name} #{patronymic}!"
  end
end
