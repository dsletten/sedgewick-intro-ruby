#!/usr/bin/ruby -w
#    Hey, Emacs, this is a -*- Mode: Ruby -*- file!
#
#    File:
#       compound_interest.rb
#
#    Synopsis:
#
#
#    Revision History:
#        Date             Change Description
#       ------ -----------------------------------------
#       250217 Original.
#
#    Ex. 1.2.21

def valid?(n)
    n > 0
end

def convert(s)
    m = Float(s);

    if valid?(m)
      m
    else
      nil
    end
end

def compound(p, r, t)
  p * Math.exp(r * t)
end

if ARGV.size == 3
  begin
    p = convert(ARGV[0])
    r = convert(ARGV[1])
    t = convert(ARGV[2])

    if [p, r, t].any? {|x| x.nil?}
      raise ArgumentError.new
    else
      puts("Amount: #{compound(p, r / 100.0, t)}")
    end
  rescue
    puts("Corrupt")
  end
end

