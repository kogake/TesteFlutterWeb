const express = require('express');
const { catalogoController, compraController, loginController } = require('../controllers');

const router = express.Router();

router.get('/catalogo', catalogoController.getCatalogo);

router.post('/compra', compraController.postCompra);

router.post('/login', loginController.postLogin);

module.exports = router;