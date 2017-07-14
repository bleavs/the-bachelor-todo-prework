def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |keys, values|
      if keys["status"] == "Winner"
         return keys["name"].split.first
      end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, people|
      people.each do |stats|
          if stats["occupation"] == occupation
              return stats["name"]
          end
      end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season, people|
    people.each do |stats|
        if stats["hometown"] == hometown
            counter += 1
        end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, people|
      people.each do |stats|
          if stats["hometown"] == hometown
              return stats["occupation"]
          end
      end
    end
end

def get_average_age_for_season(data, season)
  # code here
  age_array = []
  data[season].each do |key, value|
      age_array << key["age"].to_f
  end
   return (age_array.reduce(:+) / age_array.length).round
end
