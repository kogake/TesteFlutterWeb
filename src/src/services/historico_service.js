const axios = require('axios');
const baseURL = 'TODO';

const registerPurchase = async function (compra, callback, errorCallback) {
  axios({
    method: 'post',
    url: 'TODO',
    baseURL,
    data: compra
  }).then(function (response) {
    callback(response.data);
  }).catch(errorCallback);
}

module.exports = {
  registerPurchase,
}