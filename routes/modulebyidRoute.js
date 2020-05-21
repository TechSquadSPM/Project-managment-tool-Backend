let express = require('express');
let Module = require('../Models/ModuleModel');
let router = express.Router();

router.get("/:moduleId",(req,res)=>{
    Module.getmodulebymoduleId(req.params.moduleId,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})

module.exports = router;