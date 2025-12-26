const express = require('express');
const userRouter = require('./routes/users')

const app = express();

app.use(express.json());
//app.use((req, res, next) =>// {
    // for ever incoming request this middleware will be called
//     const path = req.url
//     if (path == '/users/signin' || path == '/users/signup')
//         next()
//     else {
//         res.send('You need to be authorized')
//     }
// })
app.use('/users', userRouter)

app.listen(4000, 'localhost', () => {
    console.log('Server is running on 4000');
});