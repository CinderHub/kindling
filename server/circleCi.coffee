CircleCi.allow
  insert:()->
    true
  update:()->
    true
  remove:()->
    true

if CircleCi.find().count() == 0
  CircleCi.insert
    greeting: 'hello'

Meteor.publish "circleCi", ->
  CircleCi.find()