var db = require('../dbconnection');
var team = {
    getTeamDetailsByProjectId:function(id,callback){ //for TeamMember :- identify his/her project(Query in project module) with team details.
        return db.query("select e.*,t.*,w.*,tm.* from emptbl e,teammembertbl tm,teamtbl t,workareatbl w,empworkareatbl ew where tm.teamId=t.teamId and ew.empId=tm.empId and ew.workAreaId=w.workAreaId and e.empId=ew.empId and t.projectId=?",[id],callback)
    },
    AddTeam:function(item,callback){
        return db.query("insert into teamtbl (projectId,teamSize,leaderId) values(?,?,?)",[item.projectId,item.teamSize,item.leaderId],callback);
    },
    Updateteamsize:function(item,callback){
        return db.query("update teamtbl set teamSize=? where teamId=?",[item.teamSize,item.teamId],callback);
    },
    Updateleaderid:function(item,callback){
        return db.query("update teamtbl set leaderId=? where teamId=?",[item.leaderId,item.teamId],callback);
    }
}

module.exports = team;