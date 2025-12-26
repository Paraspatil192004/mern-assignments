const jwt = require('jsonwebtoken')

const config = require('./config')
const result = require('./result')

function authUser(req, res, next) {
    // for ever incoming request this middleware will be called
    const path = req.url
    if (path == '/users/signin' || path == '/users/signup')
        next()
    else {
        const token = req.headers.token
        if (!token)
            res.send(result.createResult('Token is missing'))
        else {
            try {
                const payload = jwt.verify(token, config.SECRET)
                //req.headers.payload = payload
                req.headers.uid = payload.uid
                req.headers.email = payload.email
                next()
                // authorization()
            } catch (ex) {
                res.send(result.createResult('Token is Invalid'))
            }
        }
    }
}

module.exports = authUser