var express = require('express');
var teamMember = require('../Models/TeamMemberModel');
var router = express.Router();

router.get('/:id',(req,res)=>{
    teamMember.getMemberByType(req.params.id,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})

router.post("/:tid/:eid",(req,res)=>{
    teamMember.addTeamMember(req.params.tid,req.params.eid,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})

router.delete("/:teammemberid",(req,res)=>{
    teamMember.teamMemberDelete(req.params.teammemberid,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})

module.exports = router;