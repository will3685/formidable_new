import swal from 'sweetalert';

const displayAlert = () => {

  const initSweetalert = (selector, options = {}) => {
    const selectorEl = document.querySelector(selector)
    if (selectorEl) {
      options.text = selectorEl.childNodes[1].innerText
      swal(options);
    }
  };

  initSweetalert('#success', { title: "Done", icon: "success"});
  initSweetalert('#failed', { title: "Failed", icon: "warning"});
}


export { displayAlert };

