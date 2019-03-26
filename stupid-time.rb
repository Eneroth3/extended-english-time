# Format 24/2^N-hour time, for non-negative integer values of N.
#
# @param time [Time]
# @param base [Integer]
#
# @return [String]
def format(time = Time.now, base = 0)
  return time.strftime("%H:%M") if base == 0

  hour = time.hour % (24 / 2**base)
  suffix = (time.hour / (24 / 2**base)).to_s(2).tr("01", "AP") + "M"

  "#{hour}:#{time.strftime('%M')} #{suffix}"
end


5.times { |base| puts format(Time.now, base) }