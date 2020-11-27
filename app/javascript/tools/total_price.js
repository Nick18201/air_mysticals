const getPrice = () => {
  const startDate = document.querySelector("#booking_beginning_date");
  const endDate = document.querySelector("#booking_ending_date");
  const totalPriceBooking = document.querySelector("#total_price_booking");
  const animalPricePerDayData = document.querySelector(".form-wrapper");


  if (startDate) {
    startDate.addEventListener("change", (event) => {
      // Do something (callback)
      let numberOfDays = 1+Math.floor((Date.parse(startDate.value.substring(14,24))-Date.parse(startDate.value.substring(0,10)))/86400000)
      let animalPricePerDay = parseInt(animalPricePerDayData.dataset.price,10)
      let totalPrice = numberOfDays * animalPricePerDay
      if (!(totalPrice) || totalPrice<= 0) {
        totalPriceBooking.innerHTML = ``;
      } else {
        totalPriceBooking.innerHTML = `Prix total ${totalPrice}€`;
      };
    });
  }
}

export {getPrice}
