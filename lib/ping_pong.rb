# frozen_string_literal: true

class PingPong
  def initialize

  end

  #https://ruby-doc.org/core-2.7.0/Array.html#method-i-map was used for .map usage
  #https://www.rubyguides.com/ruby-tutorial/loops/ was used for if, elsif, else loop
  def play(number)
    Array(1..number).map do |x|
      if x % 3 == 0 && x % 5 == 0 
        'ping-pong'
      elsif x % 3 == 0 
        'ping'
      elsif x % 5 == 0 
        'pong'
      else
        x
      end
    end
  end
end