App.Router = Em.Router.extend
  enableLogging: true
  location: 'hash'
  root: Em.Route.extend
    # EVENTS
    gotoHome: Em.Route.transitionTo 'home'
    gotoStarting: Ember.Route.transitionTo 'starting.index'
    gotoCommunity: Ember.Route.transitionTo 'community.index'

    # STATES
    home: Em.Route.extend
      route: '/'
      connectOutlets: (router, context) ->
        router.get('applicationController').connectOutlet('home')

    starting: Em.Route.extend
      # SETUP
      route: '/starting'
      connectOutlets: (router, context) ->
        router.get('applicationController').connectOutlet('starting')

      # EVENTS
      gotoMVC: Em.Route.transitionTo('mvc')
      gotoEmber: Em.Route.transitionTo('ember')
      gotoIndex: Em.Route.transitionTo('index')

      # STATES
      index: Em.Route.extend
        route: '/'
        connectOutlets: (router, context) ->
          router.get('applicationController').connectOutlet('starting')
      mvc: Em.Route.extend
        route: '/mvc'
        connectOutlets: (router, context) ->
          router.get('applicationController').connectOutlet('aboutMVC')
      ember: Em.Route.extend
        route: '/mvc'
        connectOutlets: (router, context) ->
          router.get('applicationController').connectOutlet('aboutEmber')


    community: Em.Route.extend
      # SETUP
      route: '/community'
      connectOutlets: (router, context) ->
        router.get('applicationController').connectOutlet('community')
      # EVENTS
      # STATES
      index: Em.Route.extend
        route: '/'
        connectOutlets: (router, context) ->
          router.get('applicationController').connectOutlet('community')
