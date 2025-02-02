#!/usr/bin/ruby -w
# coding: utf-8
#    Hey, Emacs, this is a -*- Mode: Ruby -*- file!
#
#    File:
#       parabola.rb
#
#    Synopsis:
#
#
#    Revision History:
#        Date             Change Description
#       ------ -----------------------------------------
#       250124 Original.

def normalize_root(root)
  if root.zero?
    root.abs
  else
    root
  end
end

def calculate_roots(a, b, c)
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

def quadratic_term(a)
  if a.zero?
    ""
  elsif a == 1
    "x²"
  else
    "#{a}x²"
  end
end

def linear_term(b)
  if b.zero?
    ""
  elsif b == 1
    "+x"
  elsif b == -1
    "-x"
  else
    "#{b > 0 ? "+" : ""}#{b}x"
  end
end

def constant_term(c)
  if c.zero?
    ""
  else
    "#{c > 0 ? "+" : ""}#{c}"
  end
end

class Parabola
  attr_reader :a, :b, :c

  def initialize(a: 0, b: 0, c: 0)
    @a = a
    @b = b
    @c = c
    @root1, @root2 = calculate_roots(a, b, c)
  end

  def first_root
    @root1
  end

  def second_root
    @root2
  end

  def to_s
    "#{quadratic_term(@a)}#{linear_term(@b)}#{constant_term(@c)} [#{first_root} #{second_root}]"
  end
end
