const express = require("express")
const studentsRouter = require("./routes/students")


const app = express()

app.use(express.json())
app.use("/students",studentsRouter)

app.listen(4000,"localhost",()=>{

    console.log("server started at port 4000")
})

