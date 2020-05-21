let express = require('express');
let SubModule = require('../Models/SubModuleModel');
let router = express.Router();

router.get("/:submoduleid",(req,res)=>{
    SubModule.getSubModuleBySubmoduleId(req.params.submoduleid,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
}) 

module.exports = router;