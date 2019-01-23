module EventsHelper
  def formatted_date date
    date.strftime("%A, %B %d, %Y") if date
  end
end
