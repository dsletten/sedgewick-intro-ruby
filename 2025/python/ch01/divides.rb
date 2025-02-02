#!/usr/bin/ruby -w
#    Hey, Emacs, this is a -*- Mode: Ruby -*- file!
#
#    File:
#       divides.rb
#
#    Synopsis:
#
#
#    Revision History:
#        Date             Change Description
#       ------ -----------------------------------------
#       250202 Original.

def divides?(m, n)
  (m % n).zero? || (n % m).zero?
end

if ARGV.size == 2
  begin
    m = Integer(ARGV[0])
    n = Integer(ARGV[1])

    if m <= 0  ||  n <= 0
      raise ArgumentError.new
    else
      puts(divides?(m, n) ? "True" : "False")
    end
  rescue
    puts("Corrupt")
  end
end

