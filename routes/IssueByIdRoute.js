var express = require('express');
var issue = require('../Models/issueModel');
var router = express.Router();

router.get('/:issueId',(req,res)=>{
     issue.getissuebyissueid(req.params.issueId,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})

module.exports = router;