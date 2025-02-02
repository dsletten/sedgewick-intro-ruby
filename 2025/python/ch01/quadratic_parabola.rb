#!/usr/bin/ruby -w
#    Hey, Emacs, this is a -*- Mode: Ruby -*- file!
#
#    File:
#       quadratic_parabola.rb
#
#    Synopsis:
#
#
#    Revision History:
#        Date             Change Description
#       ------ -----------------------------------------
#       250124 Original.

require './parabola'

if ARGV.length == 3
  a = ARGV[0].to_f
  b = ARGV[1].to_f
  c = ARGV[2].to_f

  p = Parabola.new(a: a, b: b, c: c)

  puts(p)
  puts("Root 1: #{p.first_root}")
  puts("Root 2: #{p.second_root}")
end
