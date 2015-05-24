StravaTimeLabel = Polymer({
  is: 'strava-speed-label'
	
	properties:
		speed:
      type: Number
      notify: true
      observer: 'speedChanged'
    formattedSpeed: String

	speedChanged: (newValue) ->
    if newValue?
      @formattedSpeed = (newValue * 3.6).toFixed(1)
})