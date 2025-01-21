#!/usr/bin/env ruby -w

#    File:
#       trig-identity.rb
#
#    Synopsis:
#
#
#    Revision History:
#        Date             Change Description
#       ------ -----------------------------------------
#       130329 Original.

def square(x)
  x * x
end

def sum_squares(x, y)
  square(x) + square(y)
end

0.step(Math::PI, 0.01) do |theta|
  puts("#{theta}: #{sum_squares(Math.cos(theta), Math.sin(theta))}")
end
