# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(
            email: 'leobacks0623@gmail.com',
            password: 'Leokun0623',
            password_confirmation: 'Leokun0623',
            administrator: true)
Tag.create([
    { name: '一人旅' },
    { name: '夫婦旅' },
    { name: 'カップル旅'},
    { name: '友達旅'},
    { name: 'その他'}
    ])

Tag2.create([
        { name: '~500円' },
        { name: '501円~1000円' },
        { name: '1001円~1500円'},
        { name: '1501円~2000円'},
        { name: '2001円~'}
        ])