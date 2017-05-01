json.extract! athlete, :id, :last_name,first_name,address_num,address_street,CP,phone,birthday, :created_at, :updated_at
json.url athlete_url(athlete, format: :json)
