require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
    holiday_hash[season][holiday_name] = supply_array
    holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].flatten.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    puts season.to_s.capitalize + ":"
    holidays.each do |holiday, items|
      caps_holiday = []
      holiday.split(" ").each do |word_in_holiday|
        caps_holiday << word_in_holiday.capitalize
      end
      print caps_holiday.join(", ") + ": "
      puts items.join(", ")
    end
  end
end
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.



def all_holidays_with_bbq(holiday_hash)
  chosen = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, supplies|
      if supplies.includes?("BBQ")
        chosen << holiday
      end
    end
  end
end
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
