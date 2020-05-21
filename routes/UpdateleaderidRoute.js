var express = require('express');
var team = require('../Models/TeamModel');
var router = express.Router();

router.put('/',(req,res)=>{
        team.Updateleaderid(req.body,(err,rows)=>{
            if(err){
                res.json(err);
            }
            else{
                res.json(rows);
            }
        })
        
})


module.exports = router;