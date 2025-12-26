const express = require("express")

const pool = require("../db_connection/pool")

const result = require("../utils/result")

const router = express.Router()

router.get("/",(req,res) => {
    const sql = "select * from students"
    pool.query(sql,(error,data)=>{
        res.send(result.createResult(error,data))
    })
})

router.post("/", (req, res) => {
    // Destructing
    const { name,email,course_id,mobile_no } = req.body
    const sql = `INSERT INTO students(name,email,course_id,mobile_no) VALUES(?,?,?,?)`
    pool.query(sql, [name,email,course_id,mobile_no], (error, data) => {
     
        res.send(result.createResult(error, data))
    })
})

router.delete("/", (req, res) => {
    const { reg_no } = req.body
    const sql = "DELETE FROM students WHERE reg_no = ?"

    pool.query(sql, [reg_no], (error, data) => {
        res.send(result.createResult(error, data))
    })
})                    

router.put("/", (req, res) => {
    const { reg_no, name, email, course_id, mobile_no } = req.body
    const sql = "UPDATE students SET name = ?, email = ?, course_id = ?, mobile_no = ? WHERE reg_no = ?"
    pool.query( sql, [name, email, course_id, mobile_no, reg_no], (error, data) => { 
            res.send(result.createResult(error, data))
        })
})


module.exports = router 