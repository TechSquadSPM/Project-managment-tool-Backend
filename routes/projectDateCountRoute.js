var express = require('express');
var project = require('../Models/ProjectModel');
var router = express.Router();

router.get('/:month',(req,res)=>{
    project.getDateCount(req.params.month,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})


module.exports = router;