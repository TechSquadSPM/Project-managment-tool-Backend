var express = require('express');
var project = require('../Models/ProjectModel');
var router = express.Router();

router.get('/:status/:empid',(req,res)=>{
    project.getprojectbystatusandempid(req.params.status,req.params.empid,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})


module.exports = router;