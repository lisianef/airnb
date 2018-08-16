import Typed from 'typed.js';

function loadDynamicBannerText() {
  if (document.getElementById("banner-typed-text")) {
    new Typed('#banner-typed-text', {
      strings: ["Need Love ?", "Hugs ?", "Teddy Bears ?", "You are at the right place", "Check out what we can offer you !"],
      typeSpeed: 60,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
