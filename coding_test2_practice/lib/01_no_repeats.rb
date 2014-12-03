def no_repeats(year_start, year_end)
  (year_start..year_end).select {|year| no_repeat?(year)}
end

def no_repeat?(year)
  year.to_s.each_char do |chr|
    if year.to_s.count(chr) > 1
      return false
    end
  end
  true
end
