const express = require('express');
const mysql = require('mysql');

const app = express();

// Configura la conexión a la base de datos
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '1234',
  database: 'erp(qsl)'
});

// Conéctate a la base de datos
connection.connect((err) => {
  if (err) {
    console.error('Error al conectar a la base de datos: ', err);
    return;
  }
  console.log('Conexión a la base de datos exitosa');
});

// Ruta para obtener datos de la base de datos
app.get('/datos', (req, res) => {
  connection.query('SELECT * FROM login', (err, results) => {
    if (err) {
      console.error('Error al realizar la consulta: ', err);
      res.status(500).send('Error al obtener los datos de la base de datos');
      return;
    }
    res.json(results);
  });
});

// Configura el puerto en el que el servidor escuchará las solicitudes
const port = 3000;
app.listen(port, () => {
  console.log(`Servidor web escuchando en el puerto ${port}`);
});
