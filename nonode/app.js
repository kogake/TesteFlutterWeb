// const express = require ('express');
// const bodyParser = require('body-parser');
// const ejs = require('ejs');

// const app = express()

// app.use(bodyParser.urlencoded({ extended:   true}));

// app.set('view engine', 'ejs');

// app.get('/', (req, res) => {
//     res.render('index');
// })

// app.listen(8000)


const auth = firebase.auth();

const whenSignedIn = document.getElementById('whenSignedIn');
const whenSignedOut = document.getElementById('whenSignedOut');

const signInBtn = document.getElementById('signInBtn');
const signOutBtn = document.getElementById('signOutBtn');

const userDetails = document.getElementById('userDetails');

const provider = new firebase.auth.GoogleAuthProvider();

signInBtn.onClick = () => auth.signInWithPopoup(provider);

signOutBtn.onClick = () => auth.signOut();

