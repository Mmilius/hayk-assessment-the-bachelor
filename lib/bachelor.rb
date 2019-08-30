require "pry" 

def get_first_name_of_season_winner(data, season)
  data[season].find do |names| 
    names["status"] = "Winner"
  end["name"].split[0]
  end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |values|
      if values["occupation"] == occupation
      return values["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  contestants_location = []
  data.each do |season, contestants|
    contestants.each do |values|
      if values["hometown"] == hometown
        contestants_location << values["hometown"] 
      end
    end
  end
  contestants_location.count
end

def get_occupation(data, hometown)
  contestants_occupation = []
  data.each do |season, contestants|
    contestants.each do |values|
      if values["hometown"] == hometown
      contestants_occupation << values["occupation"]
      end
    end
  end
  contestants_occupation.first
end


def get_average_age_for_season(data, season)
  season_ages = data [season].map do |contestants|
    contestants["age"].to_i
    end
  return (season_ages.sum.to_f/ season_ages.size).round
end
