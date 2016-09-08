module BookingRequestsHelper
  def slot_as_formatted_date(slot_text)
    Date.parse(slot_properties(slot_text)[:date]).strftime('%A, %b %e')
  end

  def slot_period(slot_text)
    from_date = slot_properties(slot_text)[:from]

    DateTime.parse('2016-01-01 ' + from_date[0,2] + ':' + from_date[2,4]).strftime('%l:%M%P')
  end

  def slot_duration
    '60 minutes'
  end

  private

  def slot_properties(slot_text)
    date, from, to = slot_text.match(/\A(\d{4}-\d{2}-\d{2})-(\d{4})-(\d{4})\z/).captures

    {
      date: date,
      from: from,
      to: to
    }
  end
end
