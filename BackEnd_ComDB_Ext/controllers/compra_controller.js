const { compras } = require('../domain');

const estoque = require('../services/estoque_service');

const postCompra = async (req, res, next) => {
  const body = req.body;

  const callback = (response) => {
    res.send(response);
    next();
  }
  const errorCallback = (e) => res.sendStatus(500) && next(e);

  try {
    compras.makePurchase(body, callback, errorCallback);
  } catch (e) {
    errorCallback(e);
  }
}

const registra_compra = async (req,res,next) =>{
  const body = req.body;

  const callback = (response) => {
    res.send(response);
    next();
  }
  const errorCallback = (e) => res.sendStatus(500) && next(e);

  try {
    estoque.createProduct(body, res);
  } catch (e) {
    errorCallback(e);
  }
}

module.exports = {
  postCompra,
  registra_compra
}