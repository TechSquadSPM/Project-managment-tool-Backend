var db = require('../dbconnection');
var projectannce = {
    addprojectannouncement:function(item,callback){
        let date_ob = new Date();
        let hours = date_ob.getHours();
        let minutes = date_ob.getMinutes();
        let seconds = date_ob.getSeconds();
        return db.query("insert into projectannouncementtbl (projectAnnouncementTitle,projectAnnouncementMessage,projectAnnouncementTime,projectId) values (?,?,?,?)",[item.projectAnnouncementTitle,item.projectAnnouncementMessage,date_ob,item.projectId],callback);
    },
    getAnnounceByProjectByEmpId:function(id,callback){
        return db.query("select a.*,p.* from projecttbl p,teamtbl t,teammembertbl tm,projectannouncementtbl a where t.projectId=p.projectId and p.projectId=a.projectId and tm.teamId=t.teamId and tm.empId=?",[id],callback);
    },
    getAllprojectAnnoucement:function(callback){
        return db.query("select a.*,p.* from projecttbl p,projectannouncementtbl a where a.projectId=p.projectId",callback);
    },

    deleteAnnouncement:function(id,callback)
    {
        return db.query('delete from projectannouncementtbl where projectAnnouncementId=?',[id],callback);
    },

    updateAnnouncement:function(item,callback){
        return db.query('update projectannouncementtbl set projectAnnouncementTitle=?,projectAnnouncementMessage=? where projectAnnouncementId=?',[item.projectAnnouncementTitle,item.projectAnnouncementMessage,item.projectAnnouncementId],callback);
    },

    getprojectannoucementbyID:function(id,callback){
        return db.query("select * from projectAnnouncementtbl where projectAnnouncementId=?",[id],callback);
    }
}

module.exports = projectannce;