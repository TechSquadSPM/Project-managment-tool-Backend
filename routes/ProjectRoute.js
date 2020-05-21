var express = require('express');
var project = require('../Models/ProjectModel');
var router = express.Router();
var multer = require('multer');
var path = require('path')
let fs = require('fs');
let filepath = 'public/images/projectFile/';
var storage = multer.diskStorage({
    destination: (req, file, cb) => {
    cb(null, 'public/images/projectFile/');
    },
    filename: (req, file, cb) => {
    x=req.body.projectName + '-' + Date.now()+path.extname(file.originalname);
    cb(null, req.body.projectName + '-' + Date.now()+path.extname(file.originalname))
    }
    });
    var upload = multer({storage: storage});



router.get('/:id',(req,res)=>{
    project.getEmployeeProjectDetails(req.params.id,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})

router.get('',(req,res)=>{
    project.getTotalProject((err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})

router.put('',upload.single('projectFile'),(req,res)=>{
    project.updateProjectDetailsWithFile(req.body,req.file.filename,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})

router.put('/:id',(req,res)=>{
    project.updateprojectstatusOndelete(req.params.id,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})

router.put('/:projectid/:status',(req,res)=>{
    project.updateprojectstatus(req.params.projectid,req.params.status,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})


router.post('',upload.single('projectFile'),function(req,res,next){
    project.addProject(req.body,req.file.filename,function(err,rows){
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    });
});

router.delete("/:name",(req,res)=>{
    filepath = 'public/images/projectFile/';
    filepath = filepath + req.params.name;
    console.log(filepath);
    fs.stat(filepath, function (err, stats) {
        console.log(stats);//here we got all information of file in stats variable
     
        if (err) {
            return console.error(err);
        }
     
        fs.unlink(filepath,function(err){
             if(err) return console.log(err);
             console.log('file deleted successfully');
        });  
     });}); 



module.exports = router;