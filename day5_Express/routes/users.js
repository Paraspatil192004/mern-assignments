const express = require('express');

const router = express.Router();

//get
router.get('/', (req, res) => {
    res.send("Test API working");
});


//post
router.post('/', (req, res) => {
    res.send("post method called");
});

//put
router.put('/', (req, res) => {
    res.send("put method called");
});


//delete
router.delete('/', (req, res) => {
    res.send("delete method called");
});

module.exports = router; 