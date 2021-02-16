import 'select2';

const selectCurrency = () => {
  const selectCurrencyElement = document.getElementById('flat_currency');
  if (selectCurrencyElement) {
    $(function() {
      $('#flat_currency').select2();
    });
  }
};

export { selectCurrency };
