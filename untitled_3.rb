require "prime"
require "colorize"

class Untitled3
  SLEEP_TIME       = 0.2
  LOWER_LIMT       = 0
  UPPER_LIMIT      = 1000
  LOWER_BASE_LIMIT = 2
  UPPER_BASE_LIMIT = 10

  def art
    sleep 1
    puts mission!
    sleep 10
    motion
  end

  private

  def motion
    (LOWER_LIMT..UPPER_LIMIT).each do |x|

      primes = (LOWER_BASE_LIMIT..UPPER_BASE_LIMIT).map do |base|
        { :num => x.to_s(base), :base => base }
      end.keep_if do |n|
        n.fetch(:num).to_i.prime?
      end

      if primes.count > 1
        primes
        .sort_by {|prime_group| prime_group.fetch(:base)}
        .each do |prime_group|
          print "#{prime_group.fetch(:base)}".yellow
          print " - ".light_white
          print "#{prime_group.fetch(:num)}".light_cyan
          print " | ".light_black
        end

        puts "\n\n"
      end

      sleep SLEEP_TIME
    end
  end

  def mission!
    <<-MISSION

      class Untitled3#art
      ---

      an exploration of numbers that are the same in different bases
      and also prime when treated as base 10

    MISSION
  end
end

Untitled3.new.art
