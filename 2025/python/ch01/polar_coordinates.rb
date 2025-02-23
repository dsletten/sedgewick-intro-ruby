#!/usr/bin/ruby -w
# coding: utf-8
#    Hey, Emacs, this is a -*- Mode: Ruby -*- file!
#
#    File:
#       polar_coordinates.rb
#
#    Synopsis:
#
#
#    Revision History:
#        Date             Change Description
#       ------ -----------------------------------------
#       250222 Original.
#
#    Ex. 1.2.23

def convert(s)
  Float(s)
end

def cartesian_to_polar(x, y)
  [Math.hypot(x, y), Math.atan2(y, x)]
end

if ARGV.size == 2
  begin
    x = convert(ARGV[0])
    y = convert(ARGV[1])

    (r, θ) = cartesian_to_polar(x, y)
    puts("(#{x},#{y}) -> r: #{r} θ: #{θ}")
  rescue
    puts("Corrupt")
  end
end

