const express = require('express');

const userRouter = require('./routes/users')
const authUser = require('./utils/auth')
const app = express();

// middlewares
app.use(express.json())
app.use(authUser)
app.use('/users', userRouter)

app.listen(4000, 'localhost', () => {
    console.log('Server is running on 4000');
});