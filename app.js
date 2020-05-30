var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
var employeeRouter = require('./routes/EmployeeRoute');
var employeeRouter1 = require('./routes/EmployeeRoute1');
var employeeByWorkAreaRouter = require('./routes/EmployeeByWorkTypeRoute');
var projectRouter = require('./routes/ProjectRoute');
var projectRouter1 = require('./routes/ProjectRoute1');
var teamRouter = require('./routes/teamRoute');
var clientRouter = require('./routes/ClientRoute');
var workareaRouter = require('./routes/WorkAreaRoute');
var teammemberRouter = require('./routes/TeamMemberRoute');
var projectteamRouter = require('./routes/ProjectTeamRoute');
var projectbyidRouter = require('./routes/ProjectByIdRoute');
var projectbyclientidRouter = require('./routes/ProjectByClientRoute');
var projectbyEmpIdRouter = require('./routes/projectByEmpIdRoute');
var projectbyStatusEmpIdRouter = require('./routes/projectByStatusEmpIdRoute');
var getpasswordRouter = require('./routes/forgetPasswordRoute');
var sendMailRouter = require('./routes/sendMailRoute');
var getclientRouter = require('./routes/getAllClientRoute');
var announcementRouter = require('./routes/AnnouncementRoute');
var projectannouncementRouter = require('./routes/projectannouncementRoute');
var projectannouncementRouter1 = require('./routes/projectannoucementroute1');

var projectDateCountRouter = require('./routes/projectDateCountRoute');
var projectenddateupdate = require('./routes/UpdateEndDateRoute');
var ModuleRouter = require('./routes/ModuleRoute');
var SubModuleRouter = require('./routes/SubModuleRoute');
var IssueRouter = require('./routes/issueRoute');
var ModuleAssignRouter = require('./routes/moduleassignRoute');
var IssueprojectRouter=require('./routes/issuebyProjectIdRoute');
var IssuemoduleRouter=require('./routes/IssueByModuleIdRoute');
var IssueByIdRouter = require('./routes/IssueByIdRoute');
var highissueRouter = require('./routes/GetHighPriorityIssueRoute');
var ModuleCalculateRouter = require('./routes/ModuleCalRoute');
var modulebyid = require('./routes/modulebyidRoute');
var ongoingprojectRouter=require('./routes/OngoingprojectRoute')

var memberleaderRouter=require('./routes/MemberLeaderRoute');
var memberleaderRouter1=require('./routes/MemberLeaderRoute1');
var memberleaderissueRouter=require('./routes/MemberLeaderissueRoute');
var memberleaderissueRouter1=require('./routes/MemberLeaderissueRoute1');
var deletememberRouter = require('./routes/DeleteMemberRoute');
var submodulebymoduleRouter = require('./routes/SubmoduleByModuleRoute');
var submodulebysubmoduleidRouter = require('./routes/SubmoduleBySubmoduleIdRoute');
var teambyteammemberidRouter = require('./routes/TeamByteammeberidRoute');
var updateProjectFileRouter = require("./routes/UpdateprojectfileRoute");
var updateleaderidRouter  = require("./routes/UpdateleaderidRoute");
var issuereplyRouter = require("./routes/IssueReplyRoute");
var issuereplywithoutfileRouter = require("./routes/IssueReplyWithoutFileRoute");
var updateOTPRoute=require('./routes/updateOTPRoute');
var getissuestatusbysubmoduleidRouter = require('./routes/IssueResolvedBysubmoduleIdRoute')
var cors = require('cors');

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'jade');

app.use(logger('dev'));
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', indexRouter);
app.use('/users', usersRouter);
app.use('/employee',employeeRouter);
app.use('/employee1',employeeRouter1);
app.use('/employeeworkarea',employeeByWorkAreaRouter);
app.use('/project',projectRouter);
app.use('/project1',projectRouter1);
app.use('/team',teamRouter);
app.use('/client',clientRouter);
app.use('/workarea',workareaRouter);
app.use('/teammember',teammemberRouter);
app.use('/projectteam',projectteamRouter);
app.use('/projectbyid',projectbyidRouter);
app.use('/projectbyclientid',projectbyclientidRouter);
app.use('/projectbyempid',projectbyEmpIdRouter);
app.use('/getpassword',getpasswordRouter);
app.use('/sendmail',sendMailRouter);
app.use('/getclient',getclientRouter);
app.use('/announcement',announcementRouter);
app.use('/projectannouncement',projectannouncementRouter);
app.use('/projectannouncement1',projectannouncementRouter1);
app.use('/datecount',projectDateCountRouter);
app.use('/module',ModuleRouter);
app.use('/submodule',SubModuleRouter);
app.use('/issue',IssueRouter);
app.use('/issuebymodule',IssuemoduleRouter)
app.use('/moduleassign',ModuleAssignRouter);
app.use('/modulecalculate',ModuleCalculateRouter);
app.use('/projectStatusEmpId',projectbyStatusEmpIdRouter);
app.use('/projectissue',IssueprojectRouter);
app.use('/updateenddate',projectenddateupdate);
app.use('/highissue',highissueRouter);
app.use('/ongoingproject',ongoingprojectRouter);
app.use('/updatefile',updateProjectFileRouter);
app.use('/memberleader',memberleaderRouter);
app.use('/memberleader1',memberleaderRouter1);
app.use('/memberleaderissue',memberleaderissueRouter);
app.use('/memberleaderissue1',memberleaderissueRouter1);
app.use('/modulebyid',modulebyid);
app.use('/deletemember',deletememberRouter);
app.use('/submodulebymodule',submodulebymoduleRouter);
app.use('/submodulebysubmoduleid',submodulebysubmoduleidRouter);
app.use('/teambyteamid',teambyteammemberidRouter);
app.use('/updateleader',updateleaderidRouter);
app.use('/issuebyid',IssueByIdRouter);
app.use('/updateotp',updateOTPRoute);
app.use('/issuereply',issuereplyRouter);
app.use('/issuereplywithoutfile',issuereplywithoutfileRouter);
app.use('/issuestatusbysubmoduleid',getissuestatusbysubmoduleidRouter);
// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
