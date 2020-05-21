var express = require('express');
var project = require('../Models/ProjectModel');
var router = express.Router();

router.put('/:id',(req,res)=>{
    project.updateprojectprojectFile(req.params.id,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})

router.put('',(req,res)=>{
    project.updateProjectDetailsWithoutFile(req.body,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})


module.exports = router;