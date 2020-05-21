var express = require('express');
var issue = require('../Models/issueModel');
var router = express.Router();

router.get('/:submoduleid',(req,res)=>{
    issue.getissuestatusbysubmoduleid(req.params.submoduleid,(err,rows)=>{
       if(err){
           res.json(err);
       }
       else{
           res.json(rows);
       }
   })
})

module.exports = router;