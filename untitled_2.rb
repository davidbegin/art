require "prime"
require "colorize"

class Untitled2
  SLEEP_TIME       = 0.1
  LOWER_LIMT       = 0
  UPPER_LIMIT      = 1000
  LOWER_BASE_LIMIT = 2
  UPPER_BASE_LIMIT = 10
  PRIME_COLOR      = :red
  NON_PRIME_COLOR  = :green

  def art
    sleep 1
    puts mission!; sleep 15

    (LOWER_LIMT..UPPER_LIMIT).each do |x|
      (LOWER_BASE_LIMIT..UPPER_BASE_LIMIT).reverse_each do |base|
        output_color = x.to_s(base).to_i.prime? ? PRIME_COLOR : NON_PRIME_COLOR
        print "#{x.to_s(base)}".send(output_color)
        print " | ".light_black
      end
      puts
      sleep SLEEP_TIME
    end
  end

  private

  def mission!
    <<-MISSION



      class Untitled2#art
      ---

      an exploration of numbers moving in intervals in varying bases

      count from x to y | n
        for each n
          count from j to k | b
            convert n to base b | r
              if r is prime when treated as a base ten
                print r as color l
              else
                print r as color m

      #{extended_mission if ARGV[0] == "extended"}

    MISSION
  end

  def extended_mission
    <<-EXTENDED_MISSION

    Variables:
       * the limit of the range of numbers counting
       * the limit the the range of bases
       * the speed of the program
       * the screen size
       * the color the output
       * the timing of the program
    EXTENDED_MISSION
  end
end

Untitled2.new.art
