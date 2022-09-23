//working animations: fade, zoom zoomOut

function createModal() {
  const modal = Ti.UI.createWindow({
    backgroundColor: "white",
    hero: { enabled: true, presenting: "zoom", dismissing: "zoomOut" },
    modal: true,
  });
  const viewModal = Ti.UI.createView({
    hero: { id: "redView" },
    height: 150,
    width: 150,
    top: 50,
    backgroundColor: "red",
  });
  modal.add(viewModal);
  return modal;
}

const win = Ti.UI.createWindow({
  backgroundColor: "white",
});

const navigationWindow = Ti.UI.createNavigationWindow({
  window: win,
});

const label = Ti.UI.createLabel();

const view = Ti.UI.createView({
  hero: { id: "redView" },
  height: 50,
  width: 50,
  backgroundColor: "red",
});

win.add(label);
win.add(view);

view.addEventListener("click", () => {
  const modalWindow = createModal();
  modalWindow.open();
  //navigationWindow.openWindow(modalWindow);
  setTimeout(modalWindow.close, 2000);
});
navigationWindow.open();
