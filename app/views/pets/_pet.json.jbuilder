json.extract! pet, :id, :owner_id, :breed_id, :name, :dob, :gender, :bio, :instagram, :created_at, :updated_at
json.url pet_url(pet, format: :json)
