//Archivo principal de la aplicacion

const express = require('express')

const app = express()

const port = 8081

app.get('/alumnos', (req, resp) => {
  
    const data =[
            {alumno:'Darling Olvera', matricula:'18016378'},
            {alumno:'Axel Diaz', matricula:'18016378'},
            {alumno:'Jorge Olvera', matricula:'22081589'},
            {alumno:'Oscar Navarrete', matricula:'18054671'},
            {alumno:'Eduardo Perez', matricula:'16013456'}
    ]

    resp.json(data)
})

app.listen(port,() =>{
    console.log(`app initialized! on port: ${port}`);
} )