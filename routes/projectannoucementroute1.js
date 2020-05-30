var express = require('express');
var announce = require('../Models/ProjectAnnouncementModel');
var router = express.Router();

router.get('/:id',(req,res)=>{
    announce.getprojectannoucementbyID(req.params.id,(err,rows)=>{
       if(err){
           res.json(err);
       }
       else{
           res.json(rows);
       }
   })
})

module.exports = router;