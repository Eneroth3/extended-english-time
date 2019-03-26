# Extended English Time
#
# Additional time formats based on the 12 hour time.
module EET
  # Format 24/2^N-hour time, for non-negative integer values of N.
  #
  # @param time [Time]
  # @param base [Integer]
  #
  # @example
  #   EET.format(Time.new(0, 1, 1, 16, 14,0), 0)
  #   # => "16:14"
  #
  #   EET.format(Time.new(0, 1, 1, 16, 14,0), 1)
  #   # => "4:14 PM"
  #
  #   EET.format(Time.new(0, 1, 1, 16, 14,0), 2)
  #   # => "4:14 PAM"
  #
  # @return [String]
  def self.format(time = Time.now, base = 0)
    return time.strftime("%H:%M") if base == 0

    interval = 24 / 2**base
    hour = time.hour % interval
    hour = interval if hour == 0
    suffix = (time.hour / interval).to_s(2).tr("01", "AP") + "M"

    "#{hour}:#{time.strftime('%M')} #{suffix}"
  end

end
