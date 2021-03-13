const { compras } = require('../domain');

const getCatalogo = async (req, res, next) => {
  const callback = (response) => {
    res.send(response);
    next();
  } 
  const errorCallback = (e) => res.sendStatus(500) && next(e);

  try {
    compras.getCatalogo(callback, errorCallback);
  } catch (e) {
    errorCallback(e);
  }
}

module.exports = {
  getCatalogo
}