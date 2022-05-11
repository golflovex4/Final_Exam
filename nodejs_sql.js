//Open Call Express 
const express = require('express')
const bodyParser = require('body-parser')
 
const mysql = require('mysql')
 
const app = express()
const port = process.env.PORT || 5000;
 
app.use(bodyParser.json())
app.set('view engine','ejs')
app.use(express.static('public'))


var obj = {}

//MySQL Connect phpMyAdmin
const pool = mysql.createPool({
    connectionLimit : 10,
    connectionTimeout : 20,
    host : 'localhost', //www.google.com/sql or Server IP Address
    user : 'root',
    password : '',
    database : 'Final_Ex' //Connect Database from Final_Ex.sql (Import to phpMyAdmin)
})


app.get('/addlottery',(req, res) => {   
    res.render('addlottery')
})
app.get('/Chklottery',(req, res) => {   
    res.render('Chklottery')
})
app.get('/lottery-check',(req, res) => {   
    res.render('Chklottery')
})

app.get('/credit',(req, res) => {   
    res.render('credits')
})


//GET (เรียกข้อมูลขึ้นมาดู) | POST (ส่งข้อมูลหน้า Website กลับเข้ามา)
//GET All Lottery (Lottery.sql)
app.get('',(req, res) => {
 
    pool.getConnection((err, connection) => {  //err คือ connect ไม่ได้ or connection คือ connect ได้ บรรทัดที่ 13-20
        if(err) throw err
        console.log("connected id : ?" ,connection.threadId) //ให้ print บอกว่า Connect ได้ไหม
        
         
        connection.query('SELECT * FROM lottery', (err, rows) => { 
            connection.release();
            if(!err){ //ถ้าไม่ error

                obj = {lottery : rows , Error : err} //Model data 
                
                res.render('index', obj) //ส่งไปที่หน้า index

            } else {
                console.log(err)
            }
         }) 
    })
})


app.use(bodyParser.urlencoded({extended: false})) 
//สร้าง Path ของเว็บไซต์ additem
app.post('/addlottery',(req, res) => {
    pool.getConnection((err, connection) => { //pool.getConnection สำหรับใช้เชื่อมต่อกับ Database 
        if(err) throw err
            const params = req.body

                //Check 
                pool.getConnection((err, connection2) => {
                    connection2.query(`SELECT COUNT(id) AS count FROM lottery WHERE id = ${params.id}`, (err, rows) => {
                        if(!rows?.[0].count){
                            connection.query('INSERT INTO Lottery SET ?', params, (err, rows) => {
                                connection.release()
                                if(!err){
                                    obj = {Error:err, mesg : `เพิ่มตัวเลขสำเสร็จ ${params.Number}`}
                                    res.render('addlottery', obj)
                                }else {
                                    console.log(err)
                                    }
                                })           
                        } else {
                            obj = {Error:err, mesg : `ไม่สามารถเพิ่มตัวเลขได้ ${params.Number}`}
                            res.render('addlottery', obj)
                            }
                        })
                    })
                })
            })

//ค้นหา lottery

app.get('/lottery-check',function(req, res) {
 
    con.connection(function(error){
        
        var sql ="select * from Number"; 
         
        con.query(sql,function(error, result){
            if(error) console.log(error);
            res.render(__dirname+"/lottery-check",{Number:result});
         }); 
    });
});

app.get('/Chklottery',function(res,req){

    var DATE = req.query.DATE;
    var Number = req.query.Number;

    con.connection(function(error){
        
        if(error) console.log(error);
        var sql = "SELECT * from studen where Number LIKE '%"+Number+"%' AND DATE LIKE '%"+DATE+"%'";
        con.query(sql, function(error,result){
            if(error) console.log(error);
            res.render(__dirname+"/lottery-check",{Number:result});
        });

    });
});


app.listen(port, () => 
    console.log("listen on port : ?", port)
    )

    