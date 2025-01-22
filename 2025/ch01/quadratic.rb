#!/usr/bin/ruby -w
#    Hey, Emacs, this is a -*- Mode: Ruby -*- file!
#
#    File:
#       quadratic.rb
#
#    Synopsis:
#
#
#    Revision History:
#        Date             Change Description
#       ------ -----------------------------------------
#       250121 Original.

def quadratic(a, b, c)
  discriminant = b * b - 4 * a * c
  d = Math.sqrt(discriminant)

  [(-b + d) / (2 * a),
   (-b - d) / (2 * a)]
end

#    Goldberg -- What Every Computer Scientist Should Know... pg. 162
def goldberg_quadratic(a, b, c)
  discriminant = b * b - 4 * a * c
  d = Math.sqrt(discriminant)

  if b >= 0
    [(2 * c) / (-b - d),
     (-b - d) / (2 * a)]
  else
    [(-b + d) / (2 * a),
     (2 * c) / (-b + d)]
  end    
end

if ARGV.length == 3
  a = ARGV[0].to_f
  b = ARGV[1].to_f
  c = ARGV[2].to_f

#  roots = quadratic(a, b, c)
  roots = goldberg_quadratic(a, b, c)

  puts("Root 1: #{roots[0]}")
  puts("Root 2: #{roots[1]}")
end
