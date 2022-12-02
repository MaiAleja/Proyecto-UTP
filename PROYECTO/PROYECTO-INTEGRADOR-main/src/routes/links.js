const express = require('express');
const router = express.Router();

const pool = require('../database');

router.get('/add', (req, res) => {
    res.render('links/add');
});

router.get('/home', async (req, res) => {
    const ninos = await pool.query('SELECT * FROM ninos');
    console.log(ninos);
    res.render('links/home', {ninos});
});
router.post('/add', async(req, res) => {
    const {username,age,password,fullname,email,city,job,jobPlace,income} = req.body;
    const newUser = {
        username,
        age,
        password,
        fullname,
        email,
        city,
        job,
        jobPlace,
        income
    };
    await pool.query('INSERT INTO users set ?', [newUser]);
    res.redirect('/links/home');
});

module.exports = router;