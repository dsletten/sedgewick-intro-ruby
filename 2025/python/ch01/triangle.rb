#!/usr/bin/ruby -w
# coding: utf-8
#    Hey, Emacs, this is a -*- Mode: Ruby -*- file!
#
#    File:
#       triangle.rb
#
#    Synopsis:
#
#
#    Revision History:
#        Date             Change Description
#       ------ -----------------------------------------
#       250204 Original.
#
#
#    Ex. 1.2.12
#    
#    https://en.wikipedia.org/wiki/Triangle_inequality
#
#    Explicitly: a + b > c  &  b + c > a  &  a + c > b
#    Equivalently: |a - b| < c < a + b
#    or
#    max(a, b, c) < a + b + c - max(a, b, c) => 2 max(a, b, c) < a + b + c
#    or
#    Area of triangle > 0.
#    

def valid?(n)
    n > 0  &&  n % 1 == 0
end

def convert(s)
    m = Float(s);

    if valid?(m)
      m
    else
      Float::NAN
    end
end

def triangle_sedgewick?(a, b, c)
  !(a >= (b + c) || b >= (a + c) || c >= (a + b))
end

def triangle?(a, b, c)
  a < (b + c) && b < (a + c) && c < (a + b)
end

def triangle_abs?(a, b, c)
  (a - b).abs < c && c < a + b
end

def triangle_max?(a, b, c)
  2 * [a, b, c].max < a + b + c
end

#
#    Assumes a ≥ b ≥ c
#
def heron(a, b, c)
  product = (a + (b + c)) * (c - (a - b)) * (c + (a - b)) * (a + (b - c))

  if product.negative?
    0
  else
    Math.sqrt(product) / 4
  end
end

def goldberg_heron(a, b, c)
  heron(*[a, b, c].sort {|a, b| b <=> a})
end

def triangle_area?(a, b, c)
  goldberg_heron(a, b, c) > 0
end

if ARGV.size == 3
  begin
    a = convert(ARGV[0])
    b = convert(ARGV[1])
    c = convert(ARGV[2])

    if [a, b, c].any? {|x| x.nan?}
      raise ArgumentError.new
    else
      puts(triangle_sedgewick?(a, b, c) ? "True" : "False")
      puts(triangle?(a, b, c) ? "True" : "False")
      puts(triangle_abs?(a, b, c) ? "True" : "False")
      puts(triangle_max?(a, b, c) ? "True" : "False")
      puts(triangle_area?(a, b, c) ? "True" : "False")
    end
  rescue
    puts("Corrupt")
  end
end

