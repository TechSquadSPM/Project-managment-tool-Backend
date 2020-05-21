var express = require('express');
var employee = require('../Models/EmployeeModel');
var router = express.Router();


router.get('/:emailid',(req,res)=>{
    employee.getempbyemail(req.params.emailid,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})

router.put('/:emailid/:otp',(req,res)=>{
    employee.updateOTP(req.params.emailid,req.params.otp,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})


module.exports = router;