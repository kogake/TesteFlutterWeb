const Product = require('./models/product');
const Cart = require('./models/cart');
const { estoqueService, historicoService } = require('../services');

const getCatalogo = function (cb, ecb) {
  const callback = (response) => cb(response.map(Product.make));

  estoqueService.availableProducts(callback, ecb);
}

const makePurchase = async (data, cb, ecb) => {
  cart = Cart.make(data);
  
  const estoqueCallback = (result) => {
    if (result) {
      historicoService.registerPurchase(cart.format(), cb, ecb);
    } else {
      ecb("Falta no estoque");
    }
  }

  estoqueService.removeFromStock(cart.itens, estoqueCallback, ecb);
}

module.exports = {
  getCatalogo,
  makePurchase,
}