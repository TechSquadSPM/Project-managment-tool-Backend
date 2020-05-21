var express = require('express');
var project = require('../Models/MemeberleaderProjectModel');
var router = express.Router();
var multer = require('multer');
var path = require('path')

router.get('/:id/:status',(req,res)=>{
    project.getEmployeeProjectDetailswithstatus(req.params.id,req.params.status,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})
module.exports = router;