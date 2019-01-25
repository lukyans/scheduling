module EventsHelper
  def formatted_date date
    date.strftime("%A, %B %d, %Y") unless date.nil?
  end

  def to_day date
    date.strftime("%d")
  end
end
