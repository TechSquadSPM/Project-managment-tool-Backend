var db = require('../dbconnection');
var moduleAssign = {
        addmoduleassign:function(item,callback){
            return db.query("insert into moduleassigntbl (moduleId,empId) values(?,?)",[item.moduleId,item.empId],callback);
        },
        getempbymoduleid:function(moduleid,callback){
            return db.query("select e.*,ma.* from emptbl e,moduleassigntbl ma where ma.empId=e.empId and ma.moduleId=?",[moduleid],callback);
        },
        deletememberbyid:function(empid,moduleid,callback){
            return db.query("delete from moduleassigntbl where moduleId=? and empId=?",[moduleid,empid],callback);
        },
        getdatebymoduleidandempid(empId,moduleId,callback){
            return db.query("select * from moduleassigntbl where empId=? and moduleId=?",[empId,moduleId],callback);
        }
}   
module.exports = moduleAssign;