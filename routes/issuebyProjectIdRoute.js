var express = require('express');
var issue = require('../Models/issueModel');
var router = express.Router();

router.get('/:projectId',(req,res)=>{
     issue.getAllprojectissueCOUNT(req.params.projectId,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})

router.get('/:projectId/:status',(req,res)=>{
    issue.getprojectissueCOUNTBystatus(req.params.projectId,req.params.status,(err,rows)=>{
       if(err){
           res.json(err);
       }
       else{
           res.json(rows);
       }
   })
})

router.post('',function(req,res,next){
    issue.addissuewithoutfile(req.body,function(err,rows){
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    });
}); 
module.exports = router;