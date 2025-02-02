#!/usr/bin/ruby -w
#    Hey, Emacs, this is a -*- Mode: Ruby -*- file!
#
#    File:
#       intops.rb
#
#    Synopsis:
#
#
#    Revision History:
#        Date             Change Description
#       ------ -----------------------------------------
#       250116 Original.

a = ARGV[0].to_i
b = ARGV[1].to_i

sum = a + b
difference = a - b
product = a * b
quotient = a / b
remainder = a % b
power = a ** b

puts("#{a} + #{b} = #{sum}")
puts("#{a} - #{b} = #{difference}")
puts("#{a} * #{b} = #{product}")
puts("#{a} / #{b} = #{quotient}")
puts("#{a} % #{b} = #{remainder}")
puts("#{a} ** #{b} = #{power}")

