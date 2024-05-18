module.exports =
class DeedeegMyNewPackage128314386134View
  constructor: (serializedState) ->
    # Create root element
    @element = document.createElement('div')
    @element.classList.add('deedeeg-my-new-package-128314386134')

    # Create message element
    message = document.createElement('div')
    message.textContent = "The DeedeegMyNewPackage128314386134 package is Alive! It's ALIVE!"
    message.classList.add('message')
    @element.appendChild(message)

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @element.remove()

  getElement: ->
    @element
