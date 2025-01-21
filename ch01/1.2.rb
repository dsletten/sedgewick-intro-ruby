#!/usr/bin/env ruby -w

#    File:
#       1.2.rb
#
#    Synopsis:
#
#
#    Revision History:
#        Date             Change Description
#       ------ -----------------------------------------
#       130403 Original.

#
#    1.2.14
#    
def divides?(m, n)
  if !m.integer?  ||  !n.integer?
    false
  elsif m <= 0  ||  n <= 0
    false
  else
    m % n == 0  ||  n % m == 0
  end
end

#
#    1.2.15
#
def triangle?(a, b, c)
#   [a, b, c].all?(&:integer?) &&
  [a, b, c].all? {|n| n.integer? && n > 0} &&
    a + b > c &&
    a + c > b &&
    b + c > a
end

#
#    1.2.18
#
def distance(x, y)
  if x.is_a?(Float) && y.is_a?(Float)
    Math.sqrt(x**2 + y**2)
  else
    nil
  end
end

#
#    1.2.19
#
def random_int(a, b)
  if !a.integer?
    raise "#{a} must be an integer."
  elsif !b.integer?
    raise "#{b} must be an integer."
  elsif a == b
    a
  elsif b < a
    random_int(b, a)
  else
    rand(b - a + 1) + a
  end
end

#
#    1.2.20
#
def roll_die
  random_int(1, 6)
end

def roll_dice
  roll_die + roll_die
end
