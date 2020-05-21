let express = require('express');
let Module = require('../Models/ModuleModel');
let router = express.Router();

router.get("/:projectId",(req,res)=>{
    Module.getModulesByProjectId(req.params.projectId,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})

router.get("/:status/:empId",(req,res)=>{
    Module.getEmpInprogressModuleDetails(req.params.status,req.params.empId,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})

router.post("/",(req,res)=>{
    Module.addModule(req.body,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})

router.put("/:status/:id",(req,res)=>{
    Module.updatestatus(req.params.status,req.params.id,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})

router.put("/",(req,res)=>{
    Module.updatemodule(req.body,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})

router.delete("/:moduleid",(req,res)=>{
    Module.deletemodule(req.params.moduleid,(err,rows)=>{
        if(err){
            res.send(err);
        }
        else{
            res.json({
                result:1
            })
        }
    })
})

module.exports = router;