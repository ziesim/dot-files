var mysql = require('mysql');
var express = require('express');
var app = express();
var database = 'Autovermietung';

var con = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'Erna2021!',
  database: database,
});

app.listen(8080, function () {
  console.log('');
  console.log('###############################################');
  console.log('###      server is active on port 8080      ###');
  con.connect(function (err) {
    if (err) {
      throw err;
    } else {
      console.log(`###   database '${database}' connected   ###`);
      console.log('###     browser: http://localhost:8080/     ###');
      console.log('###############################################');
      console.log('');
    }
  });
});

app.use('/', express.static('./'));

app.get('/', function (req, res) {
  res.sendFile(__dirname + '/index.html');
});

app.get('/selectKunden', function (req, res) {
  con.query('SELECT * FROM kunden', function (err, result) {
    if (err) {
      throw err;
    } else {
      res.send(result);
    }
  });
});

app.get('/selectFahrzeuge', function (req, res) {
  con.query('SELECT * FROM fahrzeuge', function (err, result) {
    if (err) {
      throw err;
    } else {
      res.send(result);
    }
  });
});

app.get('/selectMitarbeiter', function (req, res) {
  con.query('SELECT * FROM mitarbeiter', function (err, result) {
    if (err) {
      throw err;
    } else {
      res.send(result);
    }
  });
});
