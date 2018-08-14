import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Need Love", "Hugs", "You are at the right place"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
