    var db = require('../dbconnection');
var project = {

    getTotalProject:function(callback){ //Get total project count
        return db.query("select COUNT(projectId) from projecttbl",callback);
    },

    getProjectWithTeams:function(id,callback){ // get project details with its Team
    return db.query("select e.* from teamtbl t , teammembertbl tm,emptbl e where tm.teamId=t.teamId and e.empId=tm.empId and t.projectId=?",[id],callback);
    }, 

    getProjectById:function(id,callback){
        return db.query("select * from projecttbl where projectId=?",[id],callback);
    },

    getAllProjectByStatus:function(status,callback){    // get all projects with status(for count consider length of object at viewjs side)
        return db.query("select p.*,c.*,t.* from projecttbl p,clienttbl c,teamtbl t where c.clientId=p.clientId and t.projectId=p.projectId and projectStatus=?",[status],callback);  
    },

    getAllProjectwithclient:function(callback){    // get all projects with status(for count consider length of object at viewjs side)
        return db.query("select p.*,c.* from projecttbl p,clienttbl c where c.clientId=p.clientId",callback);  
    },

    getProjectByClientId:function(id,callback){
        return db.query("select p.*,c.* from projecttbl p,clienttbl c where c.clientId=p.clientId and p.clientId=?",[id],callback);  
    },
    
    getProjectByClientIdByStaus:function(id,status,callback){
        return db.query("select p.*,c.* from projecttbl p,clienttbl c where c.clientId=p.clientId and p.clientId=? and p.projectStatus=?",[id,status],callback);  
    },

    getEmployeeProjectDetails:function(id,callback){ //get employee details with his/her project details
        return db.query("select p.*,tm.teamId,t.projectId from teammembertbl tm,teamtbl t,projecttbl p where tm.teamId=t.teamId and t.projectId=p.projectId and empId=?",[id],callback);
    },

    addProject:function(item,filename,callback){ //add new project
        return db.query("insert into projecttbl(projectName,projectDescription,projectDomain,projectType,projectStartDate,projectDeadline,projectReceiveDate,clientId,projectStatus,projectFile) values(?,?,?,?,?,?,?,?,?,?)",[item.projectName,item.projectDescription,item.projectDomain,item.projectType,item.projectStartDate,item.projectDeadline,item.projectReceiveDate,item.clientId,item.projectStatus,filename],callback);
    },
    getProjectByEmpId:function(id,callback){
        return db.query("select p.*,t.* from projecttbl p,teamtbl t,teammembertbl tm where t.projectId=p.projectId and tm.teamId=t.teamId and tm.empId=?",[id],callback);
    },
    getDateCount:function(month,callback){
        return db.query("select count(month(projectReceiveDate)) as count from projecttbl where month(projectReceiveDate)=?",[month],callback);
    },    
    updateprojectstatusOndelete:function(id,callback){
        return db.query("update projecttbl set projectStatus='cancelled' where projectId=?",[id],callback);
    },
    getprojectbystatusandempid:function(status,empid,callback){
        return db.query("select p.*,c.*,t.* from projecttbl p,clienttbl c,teamtbl t,teammembertbl tm where c.clientId=p.clientId and t.projectId=p.projectId and tm.teamId = t.teamID and projectStatus=? and tm.empId=?",[status,empid],callback);  
    },
    getOngoingProject:function(status,callback){ //Get total project count
        return db.query("select * from projecttbl where projectstatus=?",[status],callback);
    },
    updateprojectstatus:function(projectId,status,callback){
        return db.query("update projecttbl set projectStatus=? where projectId=?",[status,projectId],callback);
    },   
    updateprojectendDate:function(item,callback){
        console.log(item);
        return db.query("update projecttbl set projectEndDate=? where projectId=?",[item.projectEndDate,item.projectId],callback);
    },
    updateprojectprojectFile:function(id,callback){
        return db.query("update projecttbl set projectFile='' where projectId=?",[id],callback);
    },
    updateProjectDetailsWithFile:function(item,filename,callback){   // update project Details
        return db.query("update projecttbl set projectName=?,projectDescription=?,projectDomain=?,projectStartDate=?,projectDeadline=?,projectReceiveDate=?,clientId=?,projectFile=? where projectId=?",[item.projectName,item.projectDescription,item.projectDomain,item.projectStartDate,item.projectDeadline,item.projectReceiveDate,item.clientId,filename,item.projectId],callback)
    },
    updateProjectDetailsWithoutFile:function(item,callback){   // update project Details
        return db.query("update projecttbl set projectName=?,projectDescription=?,projectDomain=?,projectStartDate=?,projectDeadline=?,projectReceiveDate=?,clientId=? where projectId=?",[item.projectName,item.projectDescription,item.projectDomain,item.projectStartDate,item.projectDeadline,item.projectReceiveDate,item.clientId,item.projectId],callback)
    },

}

module.exports = project;