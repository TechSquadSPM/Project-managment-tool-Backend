var express = require('express');
var issuereply = require('../Models/IssueReplyModel');
var router = express.Router();
var multer = require('multer');
var path = require('path')

  var storage = multer.diskStorage({
    destination: (req, file, cb) => {
    cb(null, 'public/images/IssueReply/');
    },
    filename: (req, file, cb) => {
    x=file.originalname + '-' + Date.now()+path.extname(file.originalname);
    cb(null,file.originalname + '-' + Date.now()+path.extname(file.originalname))
    }
    });
    var upload = multer({storage: storage});
 

router.post('',upload.single('issueReplyFile'),function(req,res,next){
    issuereply.addissuereply(req.body,req.file.filename,function(err,rows){
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    });
}); 

router.get('/:issueid',function(req,res,next){
    issuereply.getissuereplybyissueid(req.params.issueid,function(err,rows){
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    });
}); 

module.exports = router;