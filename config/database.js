const mysql = require("mysql2");

let connection = mysql.createConnection({
  host: process.env.HOST,
  user: 'root',
  password: process.env.PASSWORD,
  database: process.env.DATABASE
});

connection.connect(function (err) {
  if (err) throw err;
  console.log(`Connected DB: ${process.env.DATABASE}`);
});

module.exports = connection;