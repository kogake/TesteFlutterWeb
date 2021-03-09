const axios = require('axios');
const baseURL = 'https://localhost:2345';
const db = require("./database_config");

const availableProducts = async function (callback, errorCallback) {
  axios({
    method: 'get',
    url: '/produtos/estoque',
    baseURL
  }).then(function (response) {
    callback(response.data);
  }).catch(errorCallback);
}

const createProduct = async (req, res) => {

  const { product_name, quantity, price } = req;

  console.log(req);
  const { rows } = await db.query(
    "INSERT INTO products (productname, quantity, price) VALUES ($1, $2, $3)",
    [product_name, quantity, price]
  );

  res.status(201).send({
    message: "Product added successfully!",
    body: {
      product: { product_name, quantity, price }
    },
  });


};


module.exports = {
  availableProducts,
  createProduct
}