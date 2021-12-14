const express = require('express')
var cors = require('cors')
const app = express()
const port = 3000

app.use(cors())
app.use(express.static('kepek'))
app.use(express.json())

app.get('/', (req, res) => {
  res.send('Hello World!')
})

app.get('/etterem', (req, res) => {
    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 's1.siralycore.hu',
      user: 'asztalfoglalas',
      password: 'istván',
      database: 'asztalfoglalas'
    })
    
    connection.connect()
    
    connection.query('SELECT * from etterem', function (err, rows, fields) {
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
    database: 'asztalfoglalas'
  })
  
  connection.connect()
  
  connection.query('SELECT * FROM etterem ORDER BY etterem.nev ', function (err, rows, fields) {
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
    database: 'asztalfoglalas'
  })
  
  connection.connect()
  
  connection.query('SELECT * FROM etterem ORDER BY etterem.nev DESC  ', function (err, rows, fields) {
    if (err) throw err
  
    console.log(rows)
    res.send(rows)
  })
  
  connection.end()
  

})


app.get('/etterem_ert', (req, res) => {
  var mysql = require('mysql')
  var connection = mysql.createConnection({
    host: 's1.siralycore.hu',
    user: 'asztalfoglalas',
    password: 'istván',
    database: 'asztalfoglalas'
  })
  
  connection.connect()
  
  connection.query('SELECT ROUND(AVG(ertekeles.ert),1) FROM ertekeles INNER JOIN etterem ON etterem.id=ertekeles.etterem_id GROUP BY etterem.nev', function (err, rows, fields) {
    if (err) throw err
  
    console.log(rows)
    res.send(rows)
  })
  
  connection.end()
  

})



app.listen(port, () => {
console.log(`Example app listening at http://localhost:${port}`)
})