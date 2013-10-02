Router.map ->
  @route "welcome",
    path: "/"
    data: ->
      greetings: Greetings.find()

  @route "addGreeting",
    path: "/addGreeting"
    template: "addGreetingForm"
    data: ->
      greetings: Greetings.find()