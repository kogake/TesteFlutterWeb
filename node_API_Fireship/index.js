const express = require('express');
const app = express();

const PORT = 8080;

app.use(express.json() );

app.listen(
    PORT,
    ()=> console.log('Ligador')
)

app.post('/tshirt/:id',(req,res) => {

    const { id } = req.params;
    const { logo }  = req.body;

    if (!logo){
    res.status(418).send({message: 'nsadsa'})
    }

    res.send({
        tshirt:`camiseta confortavel with ${logo} and ID of ${id} `,
    })
} );