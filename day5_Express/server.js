const express = require('express');

const usersRouter = require("./routes/users");
const productRouter = require("./routes/product");
const orderRouter = require("./routes/order"); 

const app = express();

app.use("/users", usersRouter);
app.use("/product", productRouter);
app.use("/order", orderRouter);

app.listen(4000,"localhost",()=>{

    console.log("server started at port 4000");
});