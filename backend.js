const express = require('express')
var cors = require('cors')
const app = express()
const port = 25500
const dev = "https://s1.siralycore.hu:8082"

app.use(cors())
app.use(express.json())
app.use(express.static('public'))

app.get('/etterem', (req, res) => {
  var mysql = require('mysql')
  var connection = mysql.createConnection({
 host: 's1.siralycore.hu',
  user: 'asztalfoglalas',
  password: 'istván',
  database: 'asztalfoglalas',
  acquireTimeout: 1000000
  })
    
  connection.connect()
    
  connection.query('SELECT * from etterem', function (err, rows, fields) {
    if (err) throw err
    
    console.log(rows)
    res.send(rows)
  })
  connection.end()
})

app.get('/etterem2', (req, res) => {
  var mysql = require('mysql')
  var connection = mysql.createConnection({
  host: 's1.siralycore.hu',
  user: 'asztalfoglalas',
  password: 'istván',
  database: 'asztalfoglalas',
  acquireTimeout: 1000000
  })
    
  connection.connect()
    
  connection.query('SELECT etterem.id,etterem.nev,etterem.lakcim,etterem.telefon,etterem.nyitas,etterem.kep,AVG(ertekeles.ert) AS "atlag",velemenyek.velemeny_nev,velemenyek.velemeny FROM ertekeles RIGHT JOIN etterem ON etterem.id=ertekeles.Etterem_id LEFT JOIN velemenyek ON velemenyek.Etteremid=etterem.id GROUP BY etterem.id', function (err, rows, fields) {
    if (err) throw err
    
    console.log(rows)
    res.send(rows)
  })
  connection.end()
})

app.get('/velemenyek', (req, res) => {
  var mysql = require('mysql')
  var connection = mysql.createConnection({
 host: 's1.siralycore.hu',
  user: 'asztalfoglalas',
  password: 'istván',
  database: 'asztalfoglalas',
  acquireTimeout: 1000000
  })
    
  connection.connect()
    
  connection.query('SELECT * from velemenyek', function (err, rows, fields) {
    if (err) throw err
    
    console.log(rows)
    res.send(rows)
  })
  connection.end()
})


app.get('/etterem_abc_rend', (req, res) => {
  var mysql = require('mysql')
  var connection = mysql.createConnection({
  host: 's1.siralycore.hu',
  user: 'asztalfoglalas',
  password: 'istván',
  database: 'asztalfoglalas',
  acquireTimeout: 1000000
  })
    
  connection.connect()
    
  connection.query('SELECT etterem.id,etterem.nev,etterem.lakcim,etterem.telefon,etterem.nyitas,etterem.kep,AVG(ertekeles.ert) AS "atlag",velemenyek.velemeny_nev,velemenyek.velemeny FROM ertekeles RIGHT JOIN etterem ON etterem.id=ertekeles.Etterem_id LEFT JOIN velemenyek ON velemenyek.Etteremid=etterem.id GROUP BY etterem.id ORDER BY etterem.nev', function (err, rows, fields) {
    if (err) throw err
    
    console.log(rows)
    res.send(rows)
  })
  connection.end()
})

app.get('/etterem_abc_csok', (req, res) => {
  var mysql = require('mysql')
  var connection = mysql.createConnection({
  host: 's1.siralycore.hu',
  user: 'asztalfoglalas',
  password: 'istván',
  database: 'asztalfoglalas',
  acquireTimeout: 1000000
  })
    
  connection.connect()
    
  connection.query('SELECT etterem.id,etterem.nev,etterem.lakcim,etterem.telefon,etterem.nyitas,etterem.kep,AVG(ertekeles.ert) AS "atlag",velemenyek.velemeny_nev,velemenyek.velemeny FROM ertekeles RIGHT JOIN etterem ON etterem.id=ertekeles.Etterem_id LEFT JOIN velemenyek ON velemenyek.Etteremid=etterem.id GROUP BY etterem.id  ORDER BY etterem.nev DESC', function (err, rows, fields) {
    if (err) throw err
    
    console.log(rows)
    res.send(rows)
  })
  connection.end()
})

app.get('/ert_rend', (req, res) => {
  var mysql = require('mysql')
  var connection = mysql.createConnection({
  host: 's1.siralycore.hu',
  user: 'asztalfoglalas',
  password: 'istván',
  database: 'asztalfoglalas',
  acquireTimeout: 1000000
  })
    
  connection.connect()
    
  connection.query('SELECT etterem.id,etterem.nev,etterem.lakcim,etterem.telefon,etterem.nyitas,etterem.kep,AVG(ertekeles.ert) AS "atlag",velemenyek.velemeny_nev,velemenyek.velemeny FROM ertekeles RIGHT JOIN etterem ON etterem.id=ertekeles.Etterem_id LEFT JOIN velemenyek ON velemenyek.Etteremid=etterem.id GROUP BY etterem.id  ORDER BY atlag DESC', function (err, rows, fields) {
    if (err) throw err
    
    console.log(rows)
    res.send(rows)
  })
  connection.end()
})

app.post('/vfelvi', (req, res) => {

    var mysql = require('mysql')
    var connection = mysql.createConnection({
    host: 's1.siralycore.hu',
  user: 'asztalfoglalas',
  password: 'istván',
  database: 'asztalfoglalas',
  acquireTimeout: 1000000
    })

    connection.connect()
    

    connection.query("INSERT INTO `velemenyek`(`velemenyid`, `Etteremid`, `velemeny_nev`, `velemeny`) VALUES (NULL, '"+req.body.bevitel1+"', '"+req.body.bevitel2+"', '"+req.body.bevitel3+"')", function (err, rows, fields) {
     if (err) throw err
      res.send(rows)
      console.log(rows)
    })

    connection.end()
})
app.post('/ert_felvi', (req, res) => {

    var mysql = require('mysql')
    var connection = mysql.createConnection({
    host: 's1.siralycore.hu',
  user: 'asztalfoglalas',
  password: 'istván',
  database: 'asztalfoglalas',
  acquireTimeout: 1000000
    })

    connection.connect()
    

    connection.query("INSERT INTO ertekeles (ert_id, Etterem_id, ert) VALUES (NULL, '"+req.body.bevitel1+"', '"+req.body.bevitel2+"')", function (err, rows, fields) {
     if (err) throw err
      res.send(rows)
      console.log(rows)
    })

    connection.end()
})

app.post('/etlapok', (req, res) => {

  var mysql = require('mysql')
  var connection = mysql.createConnection({
  host: 's1.siralycore.hu',
  user: 'asztalfoglalas',
  password: 'istván',
  database: 'asztalfoglalas',
  acquireTimeout: 1000000
  })

  connection.connect()

  connection.query('SELECT * FROM etlapok WHERE etterem_id=?',
  [
    req.body.bevitel1
  ], 
  function (err, rows, fields) {
    if (err) throw err
      res.send(rows)
      console.log(rows)
  })

  connection.end()
})

app.post('/asztalok', (req, res) => {

  var mysql = require('mysql')
  var connection = mysql.createConnection({
  host: 's1.siralycore.hu',
  user: 'asztalfoglalas',
  password: 'istván',
  database: 'asztalfoglalas',
  acquireTimeout: 1000000
  })

  connection.connect()

  connection.query('SELECT * FROM asztalok WHERE etterem_id=?',
  [
    req.body.bevitel2
  ], 
  function (err, rows, fields) {
    if (err) throw err
      res.send(rows)
      console.log(rows)
  })

  connection.end()
})

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
  console.log(`Teszteléshez: ${dev}`)
})

