const getPrice = () => {
  const startDate = document.querySelector("#booking_beginning_date");
  const endDate = document.querySelector("#booking_ending_date");
  const totalPriceBooking = document.querySelector("#total_price_booking");
  const animalPricePerDayData = document.querySelector(".form-wrapper");


  if (startDate) {
    endDate.addEventListener("change", (event) => {
      // Do something (callback)
      let numberOfDays = Math.floor((Date.parse(endDate.value)-Date.parse(startDate.value))/60000000)
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
