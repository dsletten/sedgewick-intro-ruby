#!/usr/bin/ruby -w
#    Hey, Emacs, this is a -*- Mode: Ruby -*- file!
#
#    File:
#       quadratic_sedgewick.rb
#
#    Synopsis:
#
#
#    Revision History:
#        Date             Change Description
#       ------ -----------------------------------------
#       250121 Original.

def quadratic(b, c)
  discriminant = b * b - 4 * c
  d = Math.sqrt(discriminant)

  [(-b + d) / 2,
   (-b - d) / 2]
end

b = ARGV[0].to_f
c = ARGV[1].to_f

roots = quadratic(b, c)

puts("Root 1: #{roots[0]}")
puts("Root 2: #{roots[1]}")
