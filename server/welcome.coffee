Greetings.allow
  insert:()->
    true
  update:()->
    true
  remove:()->
    true

if Greetings.find().count() == 0
  greetings = [
    greeting: 'Hello'
  ,
    greeting: 'Bonjour'
  ]

  _.each greetings, (greetingData) ->
    log greetingData
    Greetings.insert
      greeting: greetingData.greeting

Meteor.publish "allGreetings", ->
  Greetings.find()