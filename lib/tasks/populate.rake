namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    10.times do |n|
      puts "[DEBUG] creating user #{n+1} of 10"
      username = Faker::Name.name
      email = Faker::Internet.email
      password = "password"
      User.create!( username: username,
                    email: email,
                    password: password,
                    password_confirmation: password)
    end

    User.all.each do |user|
      puts "[DEBUG] uploading images for user #{user.id} of #{User.last.id}"
      10.times do |n|
        image = File.open(Dir.glob(File.join(Rails.root, 'sampleimages', '*')).sample)
        descriptions = %w(cool awesome crazy wow adorbs incredible).sample
        user.pins.create!(image: image, descriptions: descriptions)
      end
    end
  end
end