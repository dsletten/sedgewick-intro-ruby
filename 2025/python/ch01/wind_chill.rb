#!/usr/bin/ruby -w
#    Hey, Emacs, this is a -*- Mode: Ruby -*- file!
#
#    File:
#       wind_chill.rb
#
#    Synopsis:
#
#
#    Revision History:
#        Date             Change Description
#       ------ -----------------------------------------
#       250219 Original.
#
#    Ex. 1.2.22

def valid?(n, f)
    f.call(n)
end

def convert(s, f)
    m = Float(s)

    if valid?(m, f)
      m
    else
      nil
    end
end

def wind_chill(t, v)
  35.74 + 0.6215 * t + (0.4275 * t - 35.75) * (v ** 0.16)
end

if ARGV.size == 2
  begin
    t = convert(ARGV[0], ->(t) { t.abs <= 50 })
    v = convert(ARGV[1], ->(v) { (3..120).include?(v) })

    if [t, v].any? {|x| x.nil?}
      raise ArgumentError.new
    else
      puts("Wind chill: #{wind_chill(t, v)}")
    end
  rescue
    puts("Corrupt")
  end
end

