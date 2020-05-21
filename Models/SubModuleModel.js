let db = require('../dbconnection');
var SubModule = {
    getSubModulesByModule:function(moduleId,callback){
            return db.query("select count(case when subModuleStatus= 'Ready to deploy' then 1 else null end) * 100 / count(subModuleId)  as result from  submoduletbl where moduleId=?",[moduleId],callback);
    },
    addSubModule:function(item,callback){
        return db.query("insert into submoduletbl (moduleId,subModuleName,subModuleDescription,subModuleStartDate,subModuleDeadline,subModuleStatus) values(?,?,?,?,?,?)",[item.moduleId,item.subModuleName,item.subModuleDescription,item.subModuleStartDate,item.subModuleDeadline,item.subModuleStatus],callback);
    },
    getSubModuleByModuleIdAndStatus:function(moduleId,status,callback){
        return db.query("select * from submoduletbl where moduleId=? and subModuleStatus=?",[moduleId,status],callback);
    },
    updateStatus:function(status,id,callback){
        return db.query("update submoduletbl set subModuleStatus=? where subModuleId=?",[status,id],callback);  
    },
    getsubmodulesbymoduleid:function(moduleid,callback){
        return db.query("select * from submoduletbl where moduleId=?",[moduleid],callback);
    },
    deleteSubModule:function(submoduleId,callback){
        return db.query("delete from submoduletbl where subModuleId=?",[submoduleId],callback); 
    },
    getSubModuleBySubmoduleId:function(submoduleId,callback){
        return db.query("select * from submoduletbl where subModuleId=?",[submoduleId],callback);
    }
}
module.exports = SubModule;
