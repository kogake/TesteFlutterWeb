const axios = require('axios');
const baseURL = 'localhost:2345';

const registerPurchase = async function (compra, callback, errorCallback) {
  axios({
    method: 'post',
    url: '/estoques',
    baseURL,
    data: compra
  }).then(function (response) {
    callback(response.data);
  }).catch(errorCallback);
}

module.exports = {
  registerPurchase,
}