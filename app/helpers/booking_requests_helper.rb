module BookingRequestsHelper
  def slot_as_formatted_date(slot_text)
    Date.parse(slot_properties(slot_text)[:date]).strftime('%A, %b %e')
  end

  def slot_period(slot_text)
    slot_properties(slot_text)[:from] == '0900' ? 'Morning' : 'Afternoon'
  end

  def slot_duration
    '60 minutes'
  end

  def datalayer_json(step)
    {
      event: 'OnlineBooking',
      step: step,
      valid: @booking_request.errors.empty?,
      booking_location_name: @booking_request.booking_location.name,
      delivery_location_name: @booking_request.location_name
    }.to_json.html_safe
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
