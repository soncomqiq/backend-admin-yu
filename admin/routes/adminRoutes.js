const express = require('express');
const router = express.Router();
const database = require("../../config/database")
const jwt = require("jsonwebtoken")
const {authenticateToken} = require("../../config/jwt");

router.post("/login", (req, res) => {
  const username = req.body.username;
  const password = req.body.password;
  database.query(`select *
                  from adminsystem
                  where Username = "${username}"`, (err, rows) => {
    if (rows.length > 0) {
      if (rows[0].Password === password) {
        const token = jwt.sign({id: rows[0].No}, process.env.JWT_SECRET);
        return res.send(token);
      }
      return res.send(400)
    }
    return res.send(400);
  })
})

router.put("/song/:id", authenticateToken, (req, res) => {
  const songId = req.params.id;
  const Type = req.body.Type;
  const NamePlaylist = req.body.NamePlaylist;
  const Time = req.body.Time;
  const LinkYoutube = req.body.LinkYoutube;
  const Channel = req.body.Channel;
  const LinkPicture = req.body.LinkPicture;

  database.query(`UPDATE \`project\`.\`allmusic\`
                  SET \`Type\`         = '${Type}',
                      \`NamePlaylist\` = '${NamePlaylist}',
                      \`Time\`         = '${Time}',
                      \`LinkYoutube\`  = '${LinkYoutube}',
                      \`Channel\`      = '${Channel}',
                      \`LinkPicture\`     = '${LinkPicture}'
                  WHERE (\`PlaylistID\` = '${songId}');`, (err, rows) => {
    if (err) {
      console.log(err)
      res.status(400).send();
    } else {
      res.send({"result": "success"})
    }
  })
})

router.post("/song", authenticateToken, (req, res) => {
  const Type = req.body.Type;
  const NamePlaylist = req.body.NamePlaylist;
  const Time = req.body.Time;
  const LinkYoutube = req.body.LinkYoutube;
  const Channel = req.body.Channel;
  const LinkPicture = req.body.LinkPicture;

  database.query(`INSERT INTO \`allmusic\` (\`Type\`, \`NamePlaylist\`, \`Time\`, \`LinkYoutube\`, \`Channel\`,
                                            \`LinkPicture\`)
                  VALUES ('${Type}', '${NamePlaylist}', '${Time}', '${LinkYoutube}', '${Channel}', '${LinkPicture}
                          ');`, (err, rows) => {
    if (err) {
      console.log(err)
      res.status(400).send();
    } else {
      res.send({"result": "success"})
    }
  })
})

router.delete("/song/:id", authenticateToken, (req, res) => {
  const adminNo = req.params.id;
  database.query(`DELETE
                  FROM \`allmusic\`
                  WHERE (\`PlaylistID\` = '${adminNo}');`, (err, rows) => {
    res.send(rows)
  })
})

router.get("/song/list/:type", authenticateToken, (req, res) => {
  const type = req.params.type
  const q = req.query.q;
  const by = req.query.by;
  console.log(type, q, by)
  if (q && by) {
    database.query(`select *
                    from allmusic
                    where ${by} LIKE "%${q}%"
                      and Type = "${type}"`, (err, rows) => {
      res.send(rows)
    })
  } else {
    database.query(`select *
                    from allmusic
                    where Type = "${type}"`, (err, rows) => {
      res.send(rows)
    })
  }
})

router.get("/list", authenticateToken, (req, res) => {
  const q = req.query.q;
  const by = req.query.by;
  if (q && by) {
    database.query(`select *
                    from adminsystem
                    where ${by} LIKE "%${q}%" order by No`, (err, rows) => {
      res.send(rows)
    })
  } else {
    database.query("select * from adminsystem order by No", (err, rows) => {
      res.send(rows)
    })
  }
})

router.put("/:id", authenticateToken, (req, res) => {
  const adminNo = req.params.id;
  const No = req.body.No;
  const Username = req.body.Username;
  const Firstname = req.body.Firstname;
  const Lastname = req.body.Lastname;
  const Phone = req.body.Phone;
  const Email = req.body.Email;
  const Password = req.body.Password;

  console.log(adminNo)

  database.query(`UPDATE \`adminsystem\`
                  SET \`No\`        = '${No}',
                      \`Username\`  = '${Username}',
                      \`Firstname\` = '${Firstname}',
                      \`Lastname\`  = '${Lastname}',
                      \`Phone\`     = '${Phone}',
                      \`Email\`     = '${Email}',
                      \`Password\`  = '${Password}'
                  WHERE (\`Username\` = '${adminNo}');`, (err, rows) => {
    console.log(err)
    res.send(rows)
  })
})

router.delete("/:id", authenticateToken, (req, res) => {
  const adminNo = req.params.id;
  database.query(`DELETE
                  FROM \`adminsystem\`
                  WHERE (\`Username\` = \'${adminNo}\');`, (err, rows) => {
    res.send(rows)
  })
})

router.post("/", authenticateToken, (req, res) => {
  const No = req.body.No;
  const Username = req.body.Username;
  const Firstname = req.body.Firstname;
  const Lastname = req.body.Lastname;
  const Phone = req.body.Phone;
  const Email = req.body.Email;
  const Password = req.body.Password;

  database.query(`INSERT INTO \`adminsystem\` (\`No\`, \`Username\`, \`Firstname\`, \`Lastname\`, \`Phone\`, \`Email\`,
                                               \`Password\`)
                  VALUES ('${No}', '${Username}', '${Firstname}', '${Lastname}', '${Phone}', '${Email}', '${Password}
                          ');`, (err, rows) => {
    if (err) {
      res.status(400).send();
    } else {
      res.send({"result": "success"})
    }
  })
})

module.exports = router;