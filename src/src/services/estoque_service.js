const axios = require('axios');
const baseURL = 'https://estoque-back-renannunes.cloud.okteto.net';

const availableProducts = async function (callback, errorCallback) {
  axios({
    method: 'get',
    url: '/produtos/estoque',
    baseURL
  }).then(function (response) {
    callback(response.data);
  }).catch(errorCallback);
}

const removeFromStock = async function (carrinho, callback, errorCallback) {
  axios({
    method: 'post',
    url: '/produtos/comprar',
    baseURL,
    data: carrinho
  }).then(function (response) {
    callback(response.data);
  }).catch(errorCallback);
}

module.exports = {
  availableProducts,
	removeFromStock
}