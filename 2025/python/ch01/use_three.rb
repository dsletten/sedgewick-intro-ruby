#!/usr/bin/ruby -w
#    Hey, Emacs, this is a -*- Mode: Ruby -*- file!
#
#    File:
#       use_three.rb
#
#    Synopsis:
#
#
#    Revision History:
#        Date             Change Description
#       ------ -----------------------------------------
#       250102 Original.

def commify_list(*args)
  case args.length
  when 0 then ""
  when 1 then args[0].to_s
  when 2 then "#{args[0]} and #{args[1]}"
  else args[0...args.length-1].map(&:to_s).join(", ") + ", and " + args[args.length-1].to_s
  end
end

if ARGV.size.zero?
  puts("Nothing to see here.")
else
  puts("Hi #{commify_list(*ARGV.reverse)}.")
end

