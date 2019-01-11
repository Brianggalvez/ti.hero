var win = Ti.UI.createWindow({
  backgroundColor: 'white'
  // hero: { enabled: true }
})
var label = Ti.UI.createLabel()
var view = Ti.UI.createView({
  hero: { id: 'redView' },
  height: 50,
  width: 50,
  backgroundColor: 'red'
})
win.add(label)
win.add(view)
win.open()

var modal = Ti.UI.createWindow({
  backgroundColor: 'white',
  hero: { enabled: true },
  modal: true
})
var viewModal = Ti.UI.createView({
  hero: { id: 'redView' },
  height: 50,
  width: 50,
  top: 50,
  backgroundColor: 'red'
})

modal.add(viewModal)
view.addEventListener('click', () => {
  modal.open({ modal: true })
  setTimeout(modal.close, 2000)
})
