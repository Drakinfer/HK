function closePopup(event){
    const popup = event.target.parentElement;
    popup.remove();
}

window.closePopup = closePopup