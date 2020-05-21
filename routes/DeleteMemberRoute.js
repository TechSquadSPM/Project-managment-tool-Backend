let express = require('express');
let AssignModule = require('../Models/moduleAsssignModel');
let router = express.Router();


router.delete("/:moduleId/:empId",(req,res)=>{
    AssignModule.deletememberbyid(req.params.empId,req.params.moduleId,(err,rows)=>{
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