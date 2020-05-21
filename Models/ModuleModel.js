let db = require('../dbconnection');
var Module = {
    getModulesByProjectId:function(projectId,callback){
        return db.query("select * from  moduletbl where projectId=?",[projectId],callback);
    },
    addModule:function(item,callback){
        return db.query("insert into moduletbl (moduleName,projectId,moduleStartDate,moduleDeadline,moduleStatus,moduleDescription) values(?,?,?,?,?,?)",[item.moduleName,item.projectId,item.moduleStartDate,item.moduleDeadline,item.moduleStatus,item.moduleDescription],callback);
    },
    updatestatus:function(status,id,callback){
        return db.query("update moduletbl set moduleStatus=? where moduleId=?",[status,id],callback);
    },
    getModulesByProject:function(projectId,callback){
        return db.query("select count(case when moduleStatus='Ready to deploy' then 1 else null end) * 100 / count(moduleId)  as result from  moduletbl where projectId=?",[projectId],callback);
    },
    getEmpInprogressModuleDetails:function(status,empId,callback){
        return db.query("select m.*,ma.* from moduletbl m,moduleassigntbl ma where m.moduleId=ma.moduleId and m.moduleStatus=? and ma.empId=?",[status,empId],callback);
    },
    getmodulebymoduleId:function(moduleid,callback){
        return db.query("select * from moduletbl where moduleId=?",[moduleid],callback);
    },
    updatemodule:function(item,callback){
        return db.query("update moduletbl set moduleName=?,moduleStartDate=?,moduleDeadline=?,moduleDescription=? where moduleId=?",[item.moduleName,item.moduleStartDate,item.moduleDeadline,item.moduleDescription,item.moduleId],callback);
    },
    deletemodule:function(moduleid,callback){
        return db.query("BEGIN; DELETE FROM moduletbl where moduleId=?; DELETE FROM moduleassigntbl where moduleId=?;  DELETE FROM submoduletbl where moduleId=?;  DELETE FROM issuetbl where moduleId=?; COMMIT;",[moduleid,moduleid,moduleid,moduleid],callback);
    }
}
module.exports = Module;
