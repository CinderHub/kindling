#Define a schema that we want all inputs to the Greetings collection to follow.
greetingsSchema = new SimpleSchema
  greeting:
    type: String
    label: "Enter Your Greeting!"
    optional: false
    min: 3

#Create the Greetings Collection, with Smart Collections enabled and a schema to adhere to.
@Greetings = new Meteor.Collection2 "greetings",
  smart: true
  schema: greetingsSchema

#Create a new AutoForm instance that adheres to the schema provided, and create a template helper for it.
if Meteor.isClient
  addGreetingForm = new AutoForm(greetingsSchema)
  Template.addGreetingForm.helpers
    addGreetingForm: ->
      addGreetingForm

#Define a function to be called on the server when the form succeeds, and perform server-side validation against the schema.
if Meteor.isServer
  Meteor.methods
    addGreeting: (doc) ->
      log "addGreeting called on server!"
      check(doc,greetingsSchema)
      log "Running Check on.."
      log "doc: ",doc
      log "greetingsSchema: ",greetingsSchema
      Greetings.insert
        greeting: doc.greeting