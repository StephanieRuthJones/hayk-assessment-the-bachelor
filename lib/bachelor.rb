require 'pry'
def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant_hash|
    if contestant_hash["status"].downcase == "winner"
      return contestant_hash["name"].split(" ")[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
      contestants.each do |info|
        if info["occupation"] == occupation
          return info["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestants|
    contestants.each do |info|
      if info["hometown"] == hometown
        counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant|
      contestant.find{ |contestant| contestant["hometown"] == hometown }
    end
  end
end


def get_average_age_for_season(data, season)
  # code here
end
