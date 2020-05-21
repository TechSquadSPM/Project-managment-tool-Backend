var express = require('express');
var issuereply = require('../Models/IssueReplyModel');
var router = express.Router();

router.post('',function(req,res,next){
    issuereply.addissuereplywithoutfile(req.body,function(err,rows){
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    });
}); 

router.get('/:issueReplyId',(req,res)=>{
    issuereply.getissuereplybyissuereplyid(req.params.issueReplyId,(err,rows)=>{
       if(err){
           res.json(err);
       }
       else{
           res.json(rows);
       }
   })
})
module.exports = router;