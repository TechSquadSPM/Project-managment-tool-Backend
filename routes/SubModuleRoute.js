let express = require('express');
let SubModule = require('../Models/SubModuleModel');
let router = express.Router();

router.get("/:moduleid",(req,res)=>{
    SubModule.getSubModulesByModule(req.params.moduleid,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
}) 

router.get("/:moduleid/:status",(req,res)=>{
    SubModule.getSubModuleByModuleIdAndStatus(req.params.moduleid,req.params.status,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})
 
router.post("/",(req,res)=>{
    SubModule.addSubModule(req.body,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})


router.put("/:status/:id",(req,res)=>{
    SubModule.updateStatus(req.params.status,req.params.id,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})


module.exports = router;