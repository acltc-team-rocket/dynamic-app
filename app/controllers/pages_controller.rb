class PagesController < ApplicationController

  def fortune
    fortunes = ["you'll be rich", "you'll be poor", "you'll be neither rich nor poor."]
    @your_fortune = fortunes.sample
  end

  def lottery
    numbers = []
    6.times do
      numbers << rand(99)
    end
    @winning_combination = numbers.join(", ")
  end

  def song
    @lyric_lines =[]
    count_number = 99
    99.times do
      line = "#{count_number} bottles of beer on the wall. #{count_number} bottles of beer. Take one down, pass it around, #{count_number - 1} bottles of beer on the wall."
      @lyric_lines << line
      count_number -= 1
    end
    puts "below my lyrics"
    p @lyric_lines
  end
end
