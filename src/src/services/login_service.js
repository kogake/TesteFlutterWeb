const axios = require('axios');
const baseURL = 'TODO';

const login = async function (user, password, callback, errorCallback) {
  axios({
    method: 'post',
    url: 'TODO',
    baseURL,
    data: {user, password}
  }).then(function (response) {
    callback(response.data);
  }).catch(errorCallback);
}

module.exports = {
  login,
}