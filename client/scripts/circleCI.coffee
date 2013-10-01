Meteor.subscribe "circleCi"

Template.circleCi.helpers
  allCircle:->
    CircleCi.find()
  welcome:->
    CircleCi.findOne()