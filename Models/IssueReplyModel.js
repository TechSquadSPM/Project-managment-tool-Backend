var db = require('../dbconnection');
var issuereply = {
    addissuereply:function(item,filename,callback){
        return db.query("insert into issuereplytbl (issueId,issueReplyData,issueReplyTime,empId,issueReplyFile) values(?,?,?,?,?)",[item.issueId,item.issueReplyData,item.issueReplyTime,item.empId,filename],callback);
    },
    addissuereplywithoutfile:function(item,callback){
        return db.query("insert into issuereplytbl (issueId,issueReplyData,issueReplyTime,empId) values(?,?,?,?)",[item.issueId,item.issueReplyData,item.issueReplyTime,item.empId],callback);
    },
    getissuereplybyissueid:function(issueid,callback){
        return db.query("select ir.*,e.* from issuereplytbl ir,emptbl e,issuetbl i where i.issueId=ir.issueId and ir.empId=e.empId and i.issueId=?",[issueid],callback);
    },
    getissuereplybyissuereplyid:function(issuereplyid,callback){
        return db.query("select ir.*,e.* from issuereplytbl ir,emptbl e where ir.empId=e.empId and ir.issueReplyId=?",[issuereplyid],callback);
    }
}

module.exports = issuereply;