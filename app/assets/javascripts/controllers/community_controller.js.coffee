App.CommunityController = Em.ArrayController.extend
  content: []
  init: ->
    @_super()
    @pushObject App.CommunityModel.create
        displayName: 'Twitter'
        linkUrl: 'https://twitter.com/#!/emberjs'
        imageUrl: 'http://icons.iconarchive.com/icons/iconshots/social-media-network/32/twitter-icon.png'
    @pushObject App.CommunityModel.create
        displayName: 'GitHub'
        linkUrl: 'https://github.com/emberjs/ember.js'
        imageUrl: 'http://www.workinprogress.ca/wp-content/uploads/github.png'

