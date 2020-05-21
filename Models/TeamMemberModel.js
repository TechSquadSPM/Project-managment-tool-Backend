var db = require('../dbconnection');
var teamMember = {
    addTeamMember:function(teamid,empid,callback){
        return db.query("insert into teammembertbl (teamId,empId) values(?,?)",[teamid,empid],callback);
    },  
    getMemberByType:function(id,callback){
        return db.query("select e.* from emptbl e,empworkareatbl ew where e.empId=ew.empId and ew.workAreaId=?",[id],callback);
    },
    getMemberByTeamMemberId:function(teamid,callback){
        return db.query("select e.* from teammembertbl t,emptbl e where e.empId=t.empId and t.teamId=?",[teamid],callback);
    },
    teamMemberDelete:function(id,callback){
        return db.query("delete from teammembertbl where teamMemberId=?",[id],callback);
    }
}

module.exports = teamMember;