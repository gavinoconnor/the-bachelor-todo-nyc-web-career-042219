def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
    if contestant["status"].downcase == "winner"
      return contestant["name"].split(" ")[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |contestant|
    if contestant["occupation"] == occupation
      return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
i = 0
home_array = []
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        i += 1
      end
    end
  end
  i
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end


def get_average_age_for_season(data, season)
  ages = 0
  total_contestants = 0

  data[season].each do |contestant|
    ages += contestant["age"].to_i
    total_contestants += 1
  end
    (ages / total_contestants.to_f).round(0)
end
