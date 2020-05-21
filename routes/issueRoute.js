var express = require('express');
var issue = require('../Models/issueModel');
var router = express.Router();
var multer = require('multer');
var path = require('path')

  var storage = multer.diskStorage({
    destination: (req, file, cb) => {
    cb(null, 'public/images/Issues/');
    },
    filename: (req, file, cb) => {
    x=file.originalname + '-' + Date.now()+path.extname(file.originalname);
    cb(null,file.originalname + '-' + Date.now()+path.extname(file.originalname))
    }
    });
    var upload = multer({storage: storage});
 

router.get('/',(req,res)=>{
     issue.getAllissueCOUNT((err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})

router.get('/:status',(req,res)=>{
    issue.getissueCOUNTBystatus(req.params.status,(err,rows)=>{
       if(err){
           res.json(err);
       }
       else{
           res.json(rows);
       }
   })
})

router.put('/:issueid/:status',(req,res)=>{
    issue.updateissuestatus(req.params.issueid,req.params.status,(err,rows)=>{
       if(err){
           res.json(err);
       }
       else{
           res.json(rows);
       }
   })
})
router.post('',upload.single('issueFile'),function(req,res,next){
    issue.addissue(req.body,req.file.filename,function(err,rows){
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    });
}); 

module.exports = router;