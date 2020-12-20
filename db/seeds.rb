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
            administrator: true,
            name:'LEO',
            profile:'aaa')

Tag.create([
    { name: '一人旅' },
    { name: '夫婦旅' },
    { name: 'カップル旅'},
    { name: '友達旅'},
    { name: 'その他'},
    ])

Tag2.create([
    { name: '~500円' },
    { name: '501円~600円' },
    { name: '601円~700円'},
    { name: '701円~800円'},
    { name: '801円~900円'},
    { name: '901円~1000円'},
    { name: '1001円~1100円'},
    { name: '1101円~1200円'},
    { name: '1201円~1300円'},
    { name: '1301円~1400円'},
    { name: '1401円~1500円'},
    { name: '1501円~'}
        ])

Price.create([
            { name: '~500円' },
            { name: '501円~600円' },
            { name: '601円~700円'},
            { name: '701円~800円'},
            { name: '801円~900円'},
            { name: '901円~1000円'},
            { name: '1001円~1100円'},
            { name: '1101円~1200円'},
            { name: '1201円~1300円'},
            { name: '1301円~1400円'},
            { name: '1401円~1500円'},
            { name: '1501円~'}
                ])