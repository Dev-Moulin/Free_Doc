# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Assurer que les villes sont créées avant les docteurs et patients
paris = City.create(name: "Paris")
lyon = City.create(name: "Lyon")

# Créer les docteurs après les villes
doctor1 = Doctor.create(first_name: "John", last_name: "Doe", city: paris)
doctor2 = Doctor.create(first_name: "Alice", last_name: "Dupont", city: lyon)

# Créer les patients après les villes
patient1 = Patient.create(first_name: "Jane", last_name: "Smith", city: paris)
patient2 = Patient.create(first_name: "Bob", last_name: "Martin", city: lyon)

# Créer des rendez-vous après les docteurs et les patients
Appointment.create(doctor: doctor1, patient: patient1, city: paris, date: DateTime.now)
Appointment.create(doctor: doctor2, patient: patient2, city: lyon, date: DateTime.now)
