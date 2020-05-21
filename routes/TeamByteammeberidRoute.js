var express = require('express');
var teamMember = require('../Models/TeamMemberModel');
var router = express.Router();

router.get('/:teamid',(req,res)=>{
    teamMember.getMemberByTeamMemberId(req.params.teamid,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})

module.exports = router;