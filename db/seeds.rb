# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Profesion.destroy_all
profesions = Profesion.create([{id: 1, name: 'Psicologo' }, {id: 2, name: 'Ingeniero' }, {id: 3, name: 'Doctor' }])

User.destroy_all
users = User.create([{email: 'mail1@usuarioprueba.cl', password: '12345678', name: 'juan', last_name: 'perez', document_id: '11111111-1', profile: 1, profesion_id: 1}])
