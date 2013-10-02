Router.configure
  layout: "layout"
  notFoundTemplate: "notFound"
  loadingTemplate: "loading"

  renderTemplates:
    "header":
      to: "header"

@Subscriptions =
  greetings: Meteor.subscribe "allGreetings"