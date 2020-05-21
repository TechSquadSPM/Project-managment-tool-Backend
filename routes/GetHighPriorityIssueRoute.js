let express = require('express');
let issue = require('../Models/issueModel');
let router = express.Router();

router.get("/:empId",(req,res)=>{
    issue.gethighissue(req.params.empId,(err,rows)=>{
        if(err){
            res.send(err);
        }
        else{
            res.json(rows);
        }
    });
});

module.exports = router;