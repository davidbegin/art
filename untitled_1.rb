class Untitled1
  UPPER_LIMIT_BASE_LIMIT = 36
  UPPER_SCREEN_LENGTH    = 15
  PRINT_DELAY            = 0.02

  def art
    sleep 1
    puts mission!; sleep 15
    motion

    puts "=" * 80
    sleep 1
  end

  def mission!
    <<-MISSION



      class Untitled1#art
      ---

      count from 2 to x
        for each x
          count from 0 to y
            convert y to base x
              print y

      #{extended_mission if ARGV[0] == "extended"}

    MISSION
  end

  private

  def motion
    (2..UPPER_LIMIT_BASE_LIMIT).each do |w|
      (0..UPPER_SCREEN_LENGTH).each do |j|
        print " #{j.to_s(w)}"
        sleep PRINT_DELAY
      end
      puts
    end
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

Untitled1.new.art
