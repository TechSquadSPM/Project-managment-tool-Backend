var db = require('../dbconnection');
var issue = {
    
    getAllissueCOUNT:function(callback){
        return db.query("select COUNT(issueId) as cnt from issuetbl",callback);
    },
    getissueCOUNTBystatus:function(status,callback){
        return db.query("select COUNT(issueId) as cnt from issuetbl where issueStatus=?",[status],callback);
    },
    getAllissuebyEmpidCOUNT:function(id,status,callback){
        return db.query("select COUNT(issueId) as cnt from issuetbl where empId=? and issueStatus=?",[id,status],callback);
    },
    getAllissuebyEmpidandpriorityCOUNT:function(id,status,priority,callback){
        return db.query("select COUNT(issueId) as cnt from issuetbl where empId=? and issueStatus=? and issuePriority=? ",[id,status,priority],callback);
    },
    getAllissuebyEmpidandpriorityDETAILS:function(id,status,priority,callback){
        // return db.query("select * from issuetbl where empId=? and issueStatus=? and issuePriority=? ",[id,status,priority],callback);
        return db.query("select p.*,i.* from issuetbl i,projecttbl p where i.projectId=p.projectId and empId=? and issueStatus=? and issuePriority=? ",[id,status,priority],callback);
    },
    getAllprojectissueCOUNT:function(projectId,callback){
        return db.query("select COUNT(issueId) as cnt from issuetbl where projectId=?",[projectId],callback);
    },
    getprojectissueCOUNTBystatus:function(projectId,status,callback){
        return db.query("select COUNT(issueId) as cnt from issuetbl where  projectId=? and  issueStatus=?",[projectId,status],callback);
    },
    getIssueByModuleId:function(moduleid,callback){
        return db.query("select i.*,e.*,s.* from issuetbl i,emptbl e,submoduletbl s where i.empId=e.empId and s.subModuleId=i.subModuleId and i.moduleId=?",[moduleid],callback);
    },
    updateissuestatus:function(issueid,status,callback){
        return db.query("update issuetbl set issueStatus=? where issueId=?",[status,issueid],callback);
    },
    addissue:function(item,filename,callback){
        return db.query("insert into issuetbl (issueData,issueFile,issueStatus,empId,issueTime,issuePriority,moduleId,issueTitle,projectId,subModuleId) values(?,?,?,?,?,?,?,?,?,?)",[item.issueData,filename,item.issueStatus,item.empId,item.issueTime,item.issuePriority,item.moduleId,item.issueTitle,item.projectId,item.subModuleId],callback);
    },
    addissuewithoutfile:function(item,callback){
        return db.query("insert into issuetbl (issueData,issueStatus,empId,issueTime,issuePriority,moduleId,issueTitle,projectId,subModuleId) values(?,?,?,?,?,?,?,?,?)",[item.issueData,item.issueStatus,item.empId,item.issueTime,item.issuePriority,item.moduleId,item.issueTitle,item.projectId,item.subModuleId],callback);
    },
    gethighissue:function(empId,callback){
        return db.query("select i.*,e.empFirstName,e.empLastName,p.projectName,m.moduleName from issuetbl i,emptbl e,projecttbl p,moduleassigntbl ma,moduletbl m where ma.moduleId=m.moduleId and m.moduleStatus='inprogress' and m.projectId=p.projectId and m.moduleId=i.moduleId and i.issueStatus='pending' and i.issuePriority='high' and i.empId=e.empId and ma.empId=?",[empId],callback);
    },
    getissuebyissueid:function(issueid,callback){
        return db.query("select i.*,s.subModuleName from issuetbl i,submoduletbl s where s.subModuleId=i.subModuleId and i.issueId=?",[issueid],callback);
    },
    getissuestatusbysubmoduleid:function(submoduleid,callback){
        return db.query("select COUNT(issueId) as cnt from issuetbl where subModuleId=? and issueStatus!='resolved'",[submoduleid],callback);
    }
    
}

module.exports = issue;