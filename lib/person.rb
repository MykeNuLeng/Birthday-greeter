class Person

  attr_reader :name

  def initialize(name, day, month, year = 2020)
    @name = name
    @day = day
    @month = month
    @time = Time.new
    @year = year
  end

  def bday?
    @time.strftime("%d/%m") == "#{@day}/#{@month}"
  end

  def cant_wait
    your_birthday = Date.parse("#{@day}/#{@month}/#{@year}")
    the_date = Date.parse(@time.strftime("%d/%m/%Y"))
    days_until = your_birthday - the_date
    return (365 - your_birthday).to_i if days_until < 0
    return days_until.to_i
  end
end
