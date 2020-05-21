var express = require('express');
var project = require('../Models/ProjectModel');
var router = express.Router();

router.put('',(req,res)=>{
    project.updateprojectendDate(req.body,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})



module.exports = router;