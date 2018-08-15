import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Need Love ? ", "Candies ?", "Hugs ?","Teddy Bears ?", "This is the place to be !"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
