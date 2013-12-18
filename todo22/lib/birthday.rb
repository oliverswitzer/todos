class Birthday

  attr_reader :birth_date

  def initialize month, day, year
    @birth_date = [month, day, year]
  end

  def today?
    if current_date == birth_date
      true
    else
      false
    end
  end

  def current_date
    time_now = Time.new
    month = time_now.month
    day = time_now.day
    year = time_now.year
    return [month, day, year]
  end

end
