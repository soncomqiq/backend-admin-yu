require('dotenv').config();
const express = require('express');
const adminRoute = require("./admin/routes/adminRoutes");
const cors = require("cors");
//const port = 3030;

const app = express();

const router = express.Router();


router.use(cors())
router.use(express.json());
router.use(express.urlencoded({
  extended: true
}));
app.use(router);
app.use("/admins", adminRoute);


const {request} = require('http');
const {response} = require('express');


//insert
router.get('/admins', function (req, res) {
  let music = req.body.music;
  console.log(music);
  // if (!music) {
  //     return res.status(400).send({ error: true, message: 'Please provide Music information' });
  // }

  ConnectDatabase.query('select * from adminsystem;', function (error, results) {
    if (error) throw error;
    return res.send(results);
  })
});

//สร้างฟังก์ชันเพื่อเอาข้อมูลมาเข้าฟังชันเพื่อทำการinsert()Insert into `adminsystem` values 

router.get("/admin", function (req, res, next) {
  res.render("adminsystem", {title: 'Insert Data into MySQL', action: 'addadmin'})


});

router.post("/addadmin", function (req, res, next) {

  var ID = request.body.No;
  var username = request.body.Username;
  var Fname = request.body.Firstname;
  var Lname = request.body.Lastname;
  var Phone = request.body.Phone;
  var Email = request.body.Email;
  var Pass = request.body.Password;


  var query = `

      INSERT INTO adminsystem
      values ("${ID}", "${username}", "${Fname}", "${Lname}", "${Phone}", "${Email}", "${Pass}")

  `;

  // ("${ID}","${username}","${Fname}","${Lname}","${Phone}","${Email}","${Pass}")
  dbConn.query(query, function (error, data) {

    if (error) {
      throw error;
    } else {
      response.redirect("/admin")
    }

  });

});


module.exports = router;


/* //update
router.put('/student', function (req,res){
    let StudentID = req.body.student.StudentID;
    let student = req.body.student;

    if (!StudentID || !student){
        return res.status(400).send({ error: student, message: 'Please provide student information'});
    }

    dbConn.query('UPDATE personal_info SET ? WHERE StudentID = ?', [student, StudentID], function (error, results){
        if(error) throw error;
        return res.send({error: false, data: results.affectedRows,message: 'Student has been updated successfully.'})
    });
});



//Delete
router.delete('/student', function (req,res){
    let StudentID = req.body.StudentID;
    
    if (!StudentID){
        return res.status(400).send({ error: true, message: 'Plase provide StudentID'});
    }

    dbConn.query('DELETE FROM personal_info WHERE StudentID = ?', [StudentID], function (error, results)
    {
        if (error) throw error;
        return res.send({ error: false, data: results.affectedRows, message: 'Student has been deleted successfully.'});
    });
});


//select
router.get('/student/:id', function (req,res){
    let StudentID = req.params.id;

    if (!StudentID){
        return ress.status(400).send({error: true, message: 'Please provide student id.'});

    }
    dbConn.query('SELECT * FROM personal_info where StudentID=?', StudentID, function (error, results){
        if (error) throw error;
        return res.send ({ error: false, data: results[0], message: 'Student retrieved'});
    });
});


//select all
router.get('/music', function (req,res){
    dbConn.query('SELECT * FROM personal_info', function (error, results){
        if (error) throw error;
        return res.send({ error: false, data: results, message: 'music list'});
    });

});
 */

app.listen(process.env.PORT, () => {
  console.log('Server listening on port: ' + process.env.PORT)
});