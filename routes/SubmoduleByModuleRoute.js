let express = require('express');
let SubModule = require('../Models/SubModuleModel');
let router = express.Router();

router.get("/:moduleid",(req,res)=>{
    SubModule.getsubmodulesbymoduleid(req.params.moduleid,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
}) 

router.delete("/:submoduleid",(req,res)=>{
    SubModule.deleteSubModule(req.params.submoduleid,(err,rows)=>{
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