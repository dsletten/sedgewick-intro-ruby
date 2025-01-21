#!/usr/bin/env ruby -w

#    File:
#       leap-year.rb
#
#    Synopsis:
#
#
#    Revision History:
#        Date             Change Description
#       ------ -----------------------------------------
#       130327 Original.

def leap_year?(year)
  ((year % 4).zero?  &&  !(year % 100).zero?)  ||  (year % 400).zero?
end
