StravaLapButton = Polymer({
  is: 'strava-finish-button'
  
  properties:
    enabled:
      type: Boolean
      value: false
      observer: 'enabledChanged'

  ready: ->
    @$['finish-button'].addEventListener('click', => @finishButtonClicked())

  enabledChanged: (newValue) ->
    if newValue
      @$['finish-button'].removeAttribute('disabled')
    else
      @$['finish-button'].setAttribute('disabled', 'true')

  finishButtonClicked: ->
    alert('Finishing activity!')
})