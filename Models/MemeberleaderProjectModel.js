var db = require('../dbconnection');
var project = {

    getEmployeeProjectDetails:function(id,callback){ //get employee details with his/her project details
        return db.query("select p.*,tm.teamId,t.projectId from teammembertbl tm,teamtbl t,projecttbl p where tm.teamId=t.teamId and t.projectId=p.projectId and empId=?",[id],callback);
    },
    getEmployeeProjectDetailswithstatusCOUNT:function(id,status,callback){ //get employee details with his/her project details
        return db.query("select COUNT(p.projectId) as cnt from teammembertbl tm,teamtbl t,projecttbl p where tm.teamId=t.teamId and t.projectId=p.projectId and empId=? and p.projectStatus=?",[id,status],callback);
    },
    getEmployeeProjectDetailswithstatus:function(id,status,callback){ //get employee details with his/her project details
        return db.query("select p.* from teammembertbl tm,teamtbl t,projecttbl p where tm.teamId=t.teamId and t.projectId=p.projectId and empId=? and p.projectStatus=?",[id,status],callback);
    },
}

module.exports = project;