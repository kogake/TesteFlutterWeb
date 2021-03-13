const { compras } = require('../domain')

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

module.exports = {
  postCompra
}