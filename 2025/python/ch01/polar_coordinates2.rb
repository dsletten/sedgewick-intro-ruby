#!/usr/bin/ruby -w
# coding: utf-8
#    Hey, Emacs, this is a -*- Mode: Ruby -*- file!
#
#    File:
#       polar_coordinates2.rb
#
#    Synopsis:
#
#
#    Revision History:
#        Date             Change Description
#       ------ -----------------------------------------
#       250223 Original.

class PolarCoordinates
  attr_reader :r, :θ

  # def initialize(x, y)  # <--------- ??????
  #   @r = Math.hypot(x, y)
  #   @θ = Math.atan2(y, x)
  # end

  def initialize(r, θ)
    @r = r
    @θ = θ
  end
  
  def to_s
    "r: #@r θ: #@θ"
  end

  def self.cartesian_to_polar(x, y)
    PolarCoordinates.new(Math.hypot(x, y), Math.atan2(y, x))
  end
end

def convert(s)
  Float(s)
end

if ARGV.size == 2
  begin
    x = convert(ARGV[0])
    y = convert(ARGV[1])

    polar = PolarCoordinates.cartesian_to_polar(x, y)
    puts("(#{x},#{y}) -> #{polar}")
  rescue
    puts("Corrupt")
  end
end


