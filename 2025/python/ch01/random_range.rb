#!/usr/bin/ruby -w
#    Hey, Emacs, this is a -*- Mode: Ruby -*- file!
#
#    File:
#       random_range.rb
#
#    Synopsis:
#
#
#    Revision History:
#        Date             Change Description
#       ------ -----------------------------------------
#       250213 Original.

def random_range(a, b)
  if a > b
    random_range(b, a)
  else
    Random.new.rand(Range.new(a, b))
  end
end

def valid?(n)
    n % 1 == 0
end

def convert(s)
    m = Float(s);

    if valid?(m)
      m.to_i
    else
      nil
    end
end

if ARGV.size == 2
  begin
    a = convert(ARGV[0])
    b = convert(ARGV[1])

    if [a, b].any? {|x| x.nil?}
      raise ArgumentError.new
    else
      puts("Random [#{a},#{b}]: #{random_range(a, b)}")
    end
  rescue
    puts("Corrupt")
  end
end

