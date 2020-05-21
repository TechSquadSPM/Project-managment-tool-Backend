var express = require('express');
var issue = require('../Models/issueModel');
var router = express.Router();

router.get('/:moduleId',(req,res)=>{
     issue.getIssueByModuleId(req.params.moduleId,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})

module.exports = router;