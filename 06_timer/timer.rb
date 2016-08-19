class Timer

  def initialize
    @seconds=0
  end

  def seconds
    @seconds
  end

  def seconds= set_seconds
    @seconds = set_seconds
  end

  def time_string
    hour = @seconds / 3600
    minute = @seconds / 60 % 60
    second = @seconds % 60
    number_to_two_digit_string(hour) + ":" + number_to_two_digit_string(minute) + ":" + number_to_two_digit_string(second)
  end

  def number_to_two_digit_string number
    result = ""
    if number < 10
      result = "0" + number.to_s
    else
      result = number.to_s
    end
  end

end
