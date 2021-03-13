const { compras } = require('../services')

const postLogin = async (req, res, next) => {
  try {
    console.log(req.body);
    res.send({
      'id': '1234',
      'client': req.body.user == 'c' ? true : false,
      'payment': [
        {
          'id': 'abc',
          'name': 'mastercard',
        }
      ]
    });
    next()
  } catch(e) {
    console.log(e.message)
    res.sendStatus(500) && next(error)
  }
}

module.exports = {
  postLogin
}