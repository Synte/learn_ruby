class Timer
  def initialize
    @seconds = 0
  end

  def seconds
    return @seconds
  end

  def seconds=(seconds)
    @seconds = seconds
  end

  def time_string
    hours = (@seconds.to_i / 60) / 60
    minutes = (@seconds.to_i / 60) % 60
    seconds = @seconds.to_i % 60

    return "%02d:%02d:%02d" % [hours, minutes, seconds]
  end
end
