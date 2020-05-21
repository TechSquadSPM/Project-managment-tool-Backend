var express = require('express');
var employee = require('../Models/EmployeeModel');
var router = express.Router();

router.get('/:id',(req,res)=>{
    employee.getEmpByworkareaType(req.params.id,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})

module.exports = router;