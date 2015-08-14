class Untitled4
  def art
    sleep 1
    # puts mission!; sleep 15
    rotate

    puts "\n"
    sleep 1
  end

  def mission!
    <<-MISSION



      class Untitled4#art
      ---

      an exploration of rotate, transpose

      #{extended_mission if ARGV[0] == "extended"}

    MISSION
  end

  private

  def rotate
    carpet = Array.new(50) {
      Array.new(20) { "π" } << "∆"
    }

    (carpet.length * 10).times do |i|
      clear_and_print_title
      print carpet.join(" ")
      carpet = carpet.rotate!.map!(&:rotate!)
      sleep 0.25
    end
  end

  def print_line(array)
    (array.length * 10).times do
      puts array.join(" ")
      array.rotate!
      sleep 0.25
    end
  end

  def clear_and_print_title
    system("clear")
    puts mission!
  end

  def extended_mission
    <<-EXTENDED_MISSION

    Variables:
    EXTENDED_MISSION
  end
end

Untitled4.new.art
