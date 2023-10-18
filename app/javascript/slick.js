document.addEventListener('turbo:load', function () {
  $(".slider").slick({
    arrows: false,
    adaptiveHeight: true,
    dots: true,
    slidesToShow: 1,
    responsive: [
      {
        breakpoint: 400, // 399px以下のサイズに適用
        settings: {
        slidesToShow: 1,
        },
      },
    ],
  });
});