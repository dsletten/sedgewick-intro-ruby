#!/usr/bin/env ruby -w

#    File:
#       quadratic.rb
#
#    Synopsis:
#
#
#    Revision History:
#        Date             Change Description
#       ------ -----------------------------------------
#       130325 Original.

require 'complex'

def quadratic(b, c)
  discriminant = b * b - 4 * c
  d = Math.sqrt(discriminant)

  case
  when discriminant > 0
    [:real, (-b + d) / 2, (-b - d) / 2]
  when discriminant.zero?
    [:real, -b / 2]
  else
    [:complex, (-b + d) / 2, (-b - d) / 2]
  end
end

def quadratic(b, c)
  discriminant = b * b - 4 * c
  real_term = -b/2.0

  case
  when discriminant.zero?
    [real_term, real_term]
  when discriminant > 0
    d = Math.sqrt(discriminant)
    [real_term + d/2, real_term - d/2]
  else
    d = Math.sqrt(-discriminant)
    [Complex(real_term, d/2), Complex(real_term, -d/2)]
  end
end


    
