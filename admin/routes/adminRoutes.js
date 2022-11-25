const express = require('express');
const router = express.Router();
const database = require("../../config/database")
const jwt = require("jsonwebtoken")
const { authenticateToken } = require("../../config/jwt");

router.post("/login", (req, res) => {
  const username = req.body.username;
  const password = req.body.password;
  database.query(`select *
                  from adminsystem
                  where Username = "${username}"`, (err, rows) => {
    if (rows.length > 0) {
      if (rows[0].Password === password) {
        const token = jwt.sign({ id: rows[0].No }, process.env.JWT_SECRET);
        return res.send(token);
      }
      return res.send(400)
    }
    return res.send(400);
  })
})

router.get("/list", authenticateToken, (req, res) => {
  const q = req.query.q;
  const by = req.query.by;
  if (q & by) {
    database.query(`select *
                    from adminsystem
                    where ${by} LIKE "%${q}%"`, (err, rows) => {
      res.send(rows)
    })
  } else {
    database.query("select * from adminsystem", (err, rows) => {
      res.send(rows)
    })
  }
})

router.get("/song/list/:type", authenticateToken, (req, res) => {
  const type = req.params.type
  const q = req.query.q;
  const by = req.query.by;
  if (q & by) {
    database.query(`select *
                    from ${type}
                    where ${by} LIKE "%${q}%"`, (err, rows) => {
      res.send(rows)
    })
  } else {
    database.query(`select * from ${type}`, (err, rows) => {
      res.send(rows)
    })
  }
})

module.exports = router;