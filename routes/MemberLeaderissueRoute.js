var express = require('express');
var issue = require('../Models/issueModel');
var router = express.Router();

router.get('/:id/:status/:priority',(req,res)=>{
     issue.getAllissuebyEmpidandpriorityCOUNT(req.params.id,req.params.status,req.params.priority,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})

router.get('/:id/:status',(req,res)=>{
    issue.getAllissuebyEmpidCOUNT(req.params.id,req.params.status,(err,rows)=>{
       if(err){
           res.json(err);
       }
       else{
           res.json(rows);
       }
   })
})
module.exports = router;