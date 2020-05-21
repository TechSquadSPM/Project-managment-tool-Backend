var express = require('express');
var moduleassign = require('../Models/moduleAsssignModel');
var router = express.Router();

router.post('/',(req,res)=>{
    moduleassign.addmoduleassign(req.body,(err,rows)=>{
       if(err){
           res.json(err);
       }
       else{
           res.json(rows);
       }
   })
})

router.get('/:moduleid',(req,res)=>{
    moduleassign.getempbymoduleid(req.params.moduleid,(err,rows)=>{
       if(err){
           res.json(err);
       }
       else{
           res.json(rows);
       }
   })
})

router.get('/:empid/:moduleid',(req,res)=>{
    moduleassign.getdatebymoduleidandempid(req.params.empid,req.params.moduleid,(err,rows)=>{
       if(err){
           res.json(err);
       }
       else{
           res.json(rows);
       }
   })
})



module.exports = router;