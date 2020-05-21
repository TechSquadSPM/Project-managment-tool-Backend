var express = require('express');
var project = require('../Models/ProjectModel');
var router = express.Router();

router.get('/:status',(req,res)=>{
    project.getOngoingProject(req.params.status,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})


module.exports = router;