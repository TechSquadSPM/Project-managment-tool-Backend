let express = require('express');
let Module = require('../Models/ModuleModel');
let router = express.Router();

router.get("/:projectId",(req,res)=>{
    Module.getModulesByProject(req.params.projectId,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})

module.exports = router;