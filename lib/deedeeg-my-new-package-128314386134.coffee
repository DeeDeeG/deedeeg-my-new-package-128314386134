DeedeegMyNewPackage128314386134View = require './deedeeg-my-new-package-128314386134-view'
{CompositeDisposable} = require 'atom'

module.exports = DeedeegMyNewPackage128314386134 =
  deedeegMyNewPackage128314386134View: null
  modalPanel: null
  subscriptions: null

  activate: (state) ->
    @deedeegMyNewPackage128314386134View = new DeedeegMyNewPackage128314386134View(state.deedeegMyNewPackage128314386134ViewState)
    @modalPanel = atom.workspace.addModalPanel(item: @deedeegMyNewPackage128314386134View.getElement(), visible: false)

    # Events subscribed to in atom's system can be easily cleaned up with a CompositeDisposable
    @subscriptions = new CompositeDisposable

    # Register command that toggles this view
    @subscriptions.add atom.commands.add 'atom-workspace', 'deedeeg-my-new-package-128314386134:toggle': => @toggle()

  deactivate: ->
    @modalPanel.destroy()
    @subscriptions.dispose()
    @deedeegMyNewPackage128314386134View.destroy()

  serialize: ->
    deedeegMyNewPackage128314386134ViewState: @deedeegMyNewPackage128314386134View.serialize()

  toggle: ->
    console.log 'DeedeegMyNewPackage128314386134 was toggled!'

    if @modalPanel.isVisible()
      @modalPanel.hide()
    else
      @modalPanel.show()
