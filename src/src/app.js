const express = require('express');
const bodyParser = require('body-parser');
const app = express();
var cors = require('cors')
const routes = require('./routes');

app.use(cors());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

app.get('/', (req, res) => res.send('App is working'));

app.use('/api', routes);

app.listen(3000, () => console.log('Service listening on port 3000!'));

module.exports = {
  app,
}