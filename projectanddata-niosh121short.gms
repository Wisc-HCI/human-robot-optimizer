$title Human Robot Scheduling Project, Margaret Pearce

option limrow=0, limcol=0;
option decimals=4;
option optcr=0.01;
option solprint=off;
option reslim=10000;

$ontext
p1: NIOSH 121
p2: NIOSH 143
p3: NIOSH 835
$offtext

set processes /p1*p3/;
alias(processes, process, p, j);

set paretointerval /0*10/;
set tasks /1*10/;
alias(tasks, task, t, t1, t2, k, k1);

* Define mean task durations for a single human operator
table duration(p,t)
	1	2	3	4	5	6	7	8	9	10	
p1	5	10	1	9	8	10	-1	-1	-1	-1
p2	3	5	3	25	2	-1	-1	-1	-1	-1
p3	5	5	5	5	6	4	5	15	3	3
;

set perms /0*64/;
parameter permutation(p,perms);

permutation('p1', '0') = 0.0;
permutation('p1', '1') = 3.0;
permutation('p1', '2') = 1.0;
permutation('p1', '3') = 4.5;
permutation('p1', '4') = 1.125;
permutation('p1', '5') = 3.0;
permutation('p1', '6') = 3.0;
permutation('p1', '7') = 4.5;
permutation('p1', '8') = 2.25;
permutation('p1', '9') = 4.5;
permutation('p1', '10') = 4.5;
permutation('p1', '11') = 6.0;
permutation('p1', '12') = 2.25;
permutation('p1', '13') = 4.5;
permutation('p1', '14') = 4.5;
permutation('p1', '15') = 6.0;
permutation('p1', '16') = 3.0;
permutation('p1', '17') = 3.0;
permutation('p1', '18') = 4.5;
permutation('p1', '19') = 6.0;
permutation('p1', '20') = 3.0;
permutation('p1', '21') = 4.5;
permutation('p1', '22') = 4.5;
permutation('p1', '23') = 6.0;
permutation('p1', '24') = 4.5;
permutation('p1', '25') = 6.0;
permutation('p1', '26') = 6.0;
permutation('p1', '27') = 6.0;
permutation('p1', '28') = 4.5;
permutation('p1', '29') = 6.0;
permutation('p1', '30') = 6.0;
permutation('p1', '31') = 6.0;
permutation('p1', '32') = 3.0;
permutation('p1', '33') = 4.5;
permutation('p1', '34') = 4.5;
permutation('p1', '35') = 6.0;
permutation('p1', '36') = 3.0;
permutation('p1', '37') = 4.5;
permutation('p1', '38') = 4.5;
permutation('p1', '39') = 6.0;
permutation('p1', '40') = 4.5;
permutation('p1', '41') = 6.0;
permutation('p1', '42') = 6.0;
permutation('p1', '43') = 6.0;
permutation('p1', '44') = 4.5;
permutation('p1', '45') = 6.0;
permutation('p1', '46') = 6.0;
permutation('p1', '47') = 9.0;
permutation('p1', '48') = 4.5;
permutation('p1', '49') = 6.0;
permutation('p1', '50') = 6.0;
permutation('p1', '51') = 6.0;
permutation('p1', '52') = 4.5;
permutation('p1', '53') = 6.0;
permutation('p1', '54') = 6.0;
permutation('p1', '55') = 6.0;
permutation('p1', '56') = 6.0;
permutation('p1', '57') = 6.0;
permutation('p1', '58') = 9.0;
permutation('p1', '59') = 9.0;
permutation('p1', '60') = 6.0;
permutation('p1', '61') = 6.0;
permutation('p1', '62') = 9.0;
permutation('p1', '63') = 9.0;

permutation('p2', '0') = 0.0;
permutation('p2', '1') = 2.25;
permutation('p2', '2') = 9.0;
permutation('p2', '3') = 9.0;
permutation('p2', '4') = 0.5;
permutation('p2', '5') = 6.0;
permutation('p2', '6') = 9.0;
permutation('p2', '7') = 9.0;
permutation('p2', '8') = 27.0;
permutation('p2', '9') = 40.5;
permutation('p2', '10') = 40.5;
permutation('p2', '11') = 60.75;
permutation('p2', '12') = 40.5;
permutation('p2', '13') = 60.75;
permutation('p2', '14') = 60.75;
permutation('p2', '15') = 60.75;
permutation('p2', '16') = 0.25;
permutation('p2', '17') = 4.5;
permutation('p2', '18') = 9.0;
permutation('p2', '19') = 9.0;
permutation('p2', '20') = 1.0;
permutation('p2', '21') = 6.0;
permutation('p2', '22') = 9.0;
permutation('p2', '23') = 13.5;
permutation('p2', '24') = 27.0;
permutation('p2', '25') = 40.5;
permutation('p2', '26') = 60.75;
permutation('p2', '27') = 60.75;
permutation('p2', '28') = 40.5;
permutation('p2', '29') = 60.75;
permutation('p2', '30') = 60.75;
permutation('p2', '31') = 60.75;

permutation('p3', '0') = 0.0;
permutation('p3', '1') = 6.0;
permutation('p3', '2') = 0.25;
permutation('p3', '3') = 6.0;
permutation('p3', '4') = 3.0;
permutation('p3', '5') = 6.0;
permutation('p3', '6') = 3.0;
permutation('p3', '7') = 6.0;
permutation('p3', '8') = 1.0;
permutation('p3', '9') = 12.0;
permutation('p3', '10') = 1.0;
permutation('p3', '11') = 18.0;
permutation('p3', '12') = 12.0;
permutation('p3', '13') = 18.0;
permutation('p3', '14') = 12.0;
permutation('p3', '15') = 18.0;
permutation('p3', '16') = 3.0;
permutation('p3', '17') = 6.0;
permutation('p3', '18') = 6.0;
permutation('p3', '19') = 6.0;
permutation('p3', '20') = 6.0;
permutation('p3', '21') = 6.0;
permutation('p3', '22') = 6.0;
permutation('p3', '23') = 9.0;
permutation('p3', '24') = 12.0;
permutation('p3', '25') = 18.0;
permutation('p3', '26') = 12.0;
permutation('p3', '27') = 18.0;
permutation('p3', '28') = 12.0;
permutation('p3', '29') = 18.0;
permutation('p3', '30') = 12.0;
permutation('p3', '31') = 18.0;
permutation('p3', '32') = 4.5;
permutation('p3', '33') = 9.0;
permutation('p3', '34') = 4.5;
permutation('p3', '35') = 9.0;
permutation('p3', '36') = 9.0;
permutation('p3', '37') = 9.0;
permutation('p3', '38') = 9.0;
permutation('p3', '39') = 9.0;
permutation('p3', '40') = 18.0;
permutation('p3', '41') = 27.0;
permutation('p3', '42') = 18.0;
permutation('p3', '43') = 27.0;
permutation('p3', '44') = 18.0;
permutation('p3', '45') = 27.0;
permutation('p3', '46') = 18.0;
permutation('p3', '47') = 27.0;
permutation('p3', '48') = 9.0;
permutation('p3', '49') = 13.5;
permutation('p3', '50') = 9.0;
permutation('p3', '51') = 13.5;
permutation('p3', '52') = 9.0;
permutation('p3', '53') = 13.5;
permutation('p3', '54') = 9.0;
permutation('p3', '55') = 13.5;
permutation('p3', '56') = 18.0;
permutation('p3', '57') = 27.0;
permutation('p3', '58') = 27.0;
permutation('p3', '59') = 27.0;
permutation('p3', '60') = 27.0;
permutation('p3', '61') = 27.0;
permutation('p3', '62') = 27.0;
permutation('p3', '63') = 27.0;

table strain(p,t)
	1	2	3	4	5	6	7	8	9	10
p1	0.75	0.75	1.5	1.5	0.25	2.25	2.25	1.0	0	0
p2 	10.125	0.5	0.25	2	2.25	0.375	0.75	0	0	0
p3	0.28125	0.1875	0.0625	0.125	0.125	0.09375	0.0625	0.375	0.0625	0.1875	
;
set istask(p,t);
istask(p,t) = no;
istask(p,t) = yes$(duration(p,t) gt -1);

* Define predecessors of each task in each job. predecessor(p,t2,t1) = 1 if t1 is a predecessor of t2.
parameter predecessor(p,t2,t1);
predecessor(p,t2,t1)=0;

* Predecessors for process 1
predecessor('p1','2','1')=1;
predecessor('p1','3','1')=1;
predecessor('p1','4','3')=1;
predecessor('p1','6','5')=1;

* Predecessors for process 2
predecessor('p2','3','2')=1;
predecessor('p2','4','1')=1;
predecessor('p2','4','3')=1;
predecessor('p2','5','4')=1;

* Predecessors for process 3
predecessor('p3','2','1')=1;
predecessor('p3','3','2')=1;
predecessor('p3','4','2')=1;
predecessor('p3','5','4')=2;
predecessor('p3','6','5')=2;
predecessor('p3','8','7')=2;
predecessor('p3','9','3')=1;
predecessor('p3','9','6')=1;
predecessor('p3','9','8')=1;
predecessor('p3','10','9')=1;

set ispredecessor(p,t2,t1);
ispredecessor(p,t2,t1) = no;
ispredecessor(p,t2,t1) = yes$(predecessor(p,t2,t1) ge 1);

set sameworkerpredecessor(p,t2,t1);
sameworkerpredecessor(p,t2,t1) = no;
sameworkerpredecessor(p,t2,t1) = yes$(predecessor(p,t2,t1) eq 2);

parameter humanCapable(p,t);
humanCapable(p,t)=1;

set ishumantask(p,t);
ishumantask(p,t) = no;
ishumantask(p,t) = yes$(humanCapable(p,t) eq 1);


* Indicate which tasks a robot is capable of performing
table robotCapable(p,t)
	1	2	3	4	5	6	7	8	9	10
p1	1	0	1	0	1	0	-1	-1	-1	-1
p2	1	1	1	0	1	-1	-1	-1	-1	-1
p3	1	1	0	0	0	0	1	1	0	1
;

set isrobottask(p,t);
isrobottask(p,t) = no;
isrobottask(p,t) = yes$(robotCapable(p,t) eq 1);

* Estimate each task duration for a robotic partner
table robotDuration(p,t)
	1	2	3	4	5	6	7	8	9	10
p1	17	0	5	0	31	0	0	0	0	0
p2	11	9	6	0	13	0	0	0	0	0
p3	7	13	0	0	0	0	8	10	0	6
;


* Command line parameter indicates which process to optimize (default to 4)
$if not set runp $set runp 1



* Define workers
set allworkers /h1*h2,r1/;
alias(allworkers,wkr,wkr1);

set humans(allworkers) /h1*h2/;
alias(humans,h,h1);

set partners(allworkers) /h1,r1/;
alias(partners,w,w1);

* Upper bound on time
parameter maxtime(p);
maxtime(p) = sum(t, max( duration(p,t)$istask(p,t), robotDuration(p,t)$(isrobottask(p,t) and istask(p,t)) ) );

* Lower bound on time
parameter mintime(p);
mintime(p) = sum(t, min( duration(p,t)$istask(p,t), robotDuration(p,t)$(isrobottask(p,t) and istask(p,t)) ) );

* Upper bound on strain index
parameter maxstrain(p);
maxstrain(p) = smax(perms, permutation(p,perms));
* maxstrain(p) = sum(t, strain(p,t));

* Time
set time /time1*time200/;
alias (time, time1, time2);

* Data that will be captured after the optimal solution is found
set data /start_task, end_task, duration_task, assigned_to/;
set paretodata /completion, alpha_val, max_completion, strain, beta_val, max_strain, time_dif, strain_dif, objective_val/;
set paretoworking /humanworking, humanidle, humanworkingperc, humanidleperc, robotworking, robotidle, robotworkingperc, robotidleperc/; 


* Ensure that there are enough times (time-indexed schedule)
abort$(card(time) lt smax(p,maxtime(p))) 'Need more values in the time set';

* Ensure that each task can be performed by at least one worker
parameter taskpossible(p,t);
taskpossible(p,t) = 0;
taskpossible(p,t) = 1$( (humanCapable(p,t) eq 1) or (robotCapable(p,t) eq 1) or (not istask(p,t)) );
abort$( sum(p, sum(t, taskpossible(p,t))) ne card(tasks)*card(processes) ) 'At least one task cannot be completed by either the human or the robot';

* Set the current process being optimized to command line parameter or default
set currentProcess(p);
currentProcess(p) = no;
currentProcess(p) = yes$(ord(p) eq %runp%);
alias(currentProcess, cp, cp1);


* Variables
binary variable workerdoingtask(p,t,wkr,time)		"1 if worker wkr is executing task t of process p at time";
positive variable compprocess(p)			"The completion time of process p";
free variable compall					"Completion time for all processes";
positive variable strainindex(p)			"Strain index for a process based on tasks assigned to human";
binary variable assigned(p,t,wkr)			"1 if task t of process p is assigned to worker wkr, else 0";
positive variable permindex(p)				"Index of the permutation value to use";
binary variable useperm(p,perms)			"1 if perm is the right index based on worker assignments";

equations
assignforfulldurationpartners(p,t)		"Each task should be assigned for its full duration",
assignforfulldurationhuman(p,t)			"If the human is doing task t, then the human should do it for the full duration",
assignforfulldurationrobot(p,t)			"If the robot is doing task t, then the robot should do it for the full duration",
assignalltasks(p,t)				"Each task should be assigned to a worker",
maxnumtasksatatimepartners(p,time)		"Max # tasks that can be assigned at a time = # workers (2)",
maxonetaskperworkerpertimepartners(p,wkr,time)	"Each worker can only execute one task in a given time",
maxoneworkerpertaskpartners(p,t,time)		"A task can be assigned to at most one worker at a given time",
nobreaksintaskshuman(p,t,time)			"Tasks should not be interrupted or paused (if executed by the human worker)",
nobreaksintasksrobot(p,t,time)			"Tasks should not be interrupted or paused (if executed by the robot worker)"
nosharedtaskshuman(p,t,time)			"If the human worker does one part of a task, he/she does the entire task",
nosharedtasksrobot(p,t,time)			"If the robot worker does one part of a task, it does the entire task",
defpredecessortaskpartners(p,t,t1,time,wkr)	"If a worker is executing task t1 with predecessor t, then t must be 100% complete already by the human or robot",
defsameworkerpredecessorshuman(p,t,t1,time)	"Handle scenario where t1 has predecessor t and both tasks need to be completed by the same worker (human)",
defsameworkerpredecessorsrobot(p,t,t1,time)	"Handle scenario where t1 has predecessor t and both tasks need to be completed by the same worker (robot)",
defcompprocesspartners(p,t,wkr,time)		"The entire process p is completed when all tasks in p have been completed",
defcompallpartners				"Define the completion of all current processes",
defstrainindex(p)				"Calculate the strain index for a process",
defassigned1(p,t),
defassigned2(p,t),
defpermutationindex(p),
defuseperm1(p),
defuseperm2(p)
;

assignforfulldurationpartners(cp,t)$istask(cp,t)..
  sum((w,time), workerdoingtask(cp,t,w,time)) =l= max(duration(cp,t), robotDuration(cp,t));

assignforfulldurationhuman(cp,t)$istask(cp,t)..
  sum(time, workerdoingtask(cp,t,'h1',time)) =l= duration(cp,t);

assignforfulldurationrobot(cp,t)$istask(cp,t)..
  sum(time, workerdoingtask(cp,t,'r1',time)) =l= robotDuration(cp,t);

assignalltasks(cp,t)$istask(cp,t)..
  sum((w,time), workerdoingtask(cp,t,w,time)) =g= 1;

maxnumtasksatatimepartners(cp,time)..
  sum((w,t), workerdoingtask(cp,t,w,time)) =l= card(partners);

maxonetaskperworkerpertimepartners(cp,w,time)..
  sum(t, workerdoingtask(cp,t,w,time)) =l= 1;

maxoneworkerpertaskpartners(cp,t,time)..
  sum(w, workerdoingtask(cp,t,w,time)) =l= 1;

nobreaksintaskshuman(cp,t,time)$(istask(cp,t) and (ord(time) ge 1))..
  (workerdoingtask(cp,t,'h1',time) - workerdoingtask(cp,t,'h1',time-1))*duration(cp,t) =l= sum(time1$( (ord(time1) ge ord(time)) and (ord(time1) le (ord(time)+duration(cp,t))) ), workerdoingtask(cp,t,'h1',time1));

nobreaksintasksrobot(cp,t,time)$(istask(cp,t) and isrobottask(cp,t) and (ord(time) ge 1))..
  (workerdoingtask(cp,t,'r1',time) - workerdoingtask(cp,t,'r1',time-1))*robotDuration(cp,t) =l= sum(time1$( (ord(time1) ge ord(time)) and (ord(time1) le (ord(time)+robotDuration(cp,t))) ), workerdoingtask(cp,t,'r1',time1));

* if workerdoingtask(p,t,h,time)=1, then sum(time1, workerdoingtask(p,t,h,time1)) =g= duration(p,t)
nosharedtaskshuman(cp,t,time)$istask(cp,t)..
  workerdoingtask(cp,t,'h1',time)*duration(cp,t) =l= sum(time1, workerdoingtask(cp,t,'h1',time1));

nosharedtasksrobot(cp,t,time)$(istask(cp,t) and isrobottask(cp,t))..
  workerdoingtask(cp,t,'r1',time)*robotDuration(cp,t) =l= sum(time1, workerdoingtask(cp,t,'r1',time1));

* if workerdoingtask(p,t1,h,time), then either the robot completed the predecessors or the human did (time units assigned / duration == 1 for human or the robot)
defpredecessortaskpartners(cp,t,t1,time,w)$(ispredecessor(cp,t1,t) and istask(cp,t) and istask(cp,t1))..
  (sum(time1$(ord(time1) < ord(time)), workerdoingtask(cp,t,'h1',time1))/duration(cp,t)) + (sum(time1$(ord(time1) < ord(time)), workerdoingtask(cp,t,'r1',time1))/ (robotDuration(cp,t)$isrobottask(cp,t) + 1$(not isrobottask(cp,t)))) =g= workerdoingtask(cp,t1,w,time);

* predecessor must be completed by the same person
defsameworkerpredecessorshuman(cp,t,t1,time)$(ispredecessor(cp,t1,t) and sameworkerpredecessor(cp,t1,t) and istask(cp,t) and istask(cp,t1))..
  sum(time1$(ord(time1) < ord(time)), workerdoingtask(cp,t,'h1',time1)) =g= duration(cp,t)*workerdoingtask(cp,t1,'h1',time);

* predecessor must be completed by the same person
defsameworkerpredecessorsrobot(cp,t,t1,time)$(ispredecessor(cp,t1,t) and sameworkerpredecessor(cp,t1,t) and istask(cp,t) and istask(cp,t1) and isrobottask(cp,t))..
  sum(time1$(ord(time1) < ord(time)), workerdoingtask(cp,t,'r1',time1)) =g= robotDuration(cp,t)*workerdoingtask(cp,t1,'r1',time);

defcompprocesspartners(cp,t,w,time)..
  compprocess(cp) =g= ord(time)*workerdoingtask(cp,t,w,time);
  
compprocess.lo(cp) = ceil(mintime(cp) / card(partners));
compprocess.up(cp) = maxtime(cp);

defcompallpartners..
  compall =e= sum(cp, compprocess(cp));

* Ignore any tasks that don't belong to the current process
workerdoingtask.fx(cp,t,w,time)$(not istask(cp,t)) = 0;

* If humanCapable(p,t) = 0, don't assign the human this task (human is not capable)
workerdoingtask.fx(cp,t,'h1',time)$(not ishumantask(cp,t)) = 0;

* If robotCapable(p,t) = 0, don't assign the robot this task (robot is not capable)
workerdoingtask.fx(cp,t,'r1',time)$(not isrobottask(cp,t)) = 0;

defassigned1(cp,t)..
  assigned(cp,t,'h1') =e= sum(time, workerdoingtask(cp,t,'h1',time)) / duration(cp,t);

defassigned2(cp,t)..
  assigned(cp,t,'r1')$(isrobottask(cp,t)) =e= (sum(time, workerdoingtask(cp,t,'r1',time)) / robotDuration(cp,t))$(isrobottask(cp,t));

defpermutationindex(cp)..
  permindex(cp) =e= sum(t, assigned(cp,t,'h1')*power(2,(ord(t)-1)));

defuseperm1(cp)..
  sum(perms, useperm(cp,perms)*ord(perms)) =e= permindex(cp) + 1;

defuseperm2(cp)..
  sum(perms, useperm(cp,perms)) =e= 1;

* Calculate strain index
defstrainindex(cp)..
  strainindex(cp) =e= sum(perms, permutation(cp,perms)*useperm(cp,perms));
*  strainindex(cp) =e= sum(t$istask(cp,t), sum(time, workerdoingtask(cp,t,'h1',time)*strain(cp,t)) / duration(cp,t) );


* Solve the problem within 5% of the optimal solution
model humanRobotPartners /assignforfulldurationpartners, assignforfulldurationhuman, assignforfulldurationrobot, assignalltasks, maxnumtasksatatimepartners, maxonetaskperworkerpertimepartners, maxoneworkerpertaskpartners, nobreaksintaskshuman, nobreaksintasksrobot, nosharedtaskshuman, nosharedtasksrobot, defpredecessortaskpartners, defsameworkerpredecessorshuman, defsameworkerpredecessorsrobot, defcompprocesspartners, defcompallpartners, defstrainindex, defassigned1, defassigned2, defpermutationindex, defuseperm1, defuseperm2/;
solve humanRobotPartners using mip minimizing compall;


parameter tasklist(p,t,time,wkr);
tasklist(cp,t,time,w) = workerdoingtask.l(cp,t,w,time);
display tasklist;

parameter taskHasStartedPartners(p,t,time)	"1 if the task has started by time, otherwise 0";
taskHasStartedPartners(cp,t,time) = 1$(sum((time1,w)$(ord(time1) le ord(time)), workerdoingtask.l(cp,t,w,time1)) ge 1);

parameter taskAssignedToRobot(p,t)		"1 if the task is assigned to the robot, otherwise 0";
taskAssignedToRobot(cp,t) = 1$(sum(time1, workerdoingtask.l(cp,t,'r1',time1)) > 0);

parameter startTimePartners(p,t)		"The time that task t of process p starts";
startTimePartners(cp,t) = sum(time, ord(time)*(taskHasStartedPartners(cp,t,time)-taskHasStartedPartners(cp,t,time-1)$(ord(time)>1)));

parameter compTimePartners(p,t)			"The time that task t of process p completes";
compTimePartners(cp,t)$istask(cp,t) = startTimePartners(cp,t) + duration(cp,t)*(1-taskAssignedToRobot(cp,t)) + robotDuration(cp,t)*taskAssignedToRobot(cp,t);

parameter resultsPartners(p,t,data)		"Display the start time, end time, duration, and assignment of each task";
resultsPartners(cp,t,'start_task') = startTimePartners(cp,t)$istask(cp,t);
resultsPartners(cp,t,'end_task') = compTimePartners(cp,t)$istask(cp,t);
resultsPartners(cp,t,'duration_task')$istask(cp,t) = (duration(cp,t)*(1-taskAssignedToRobot(cp,t)) + robotDuration(cp,t)*taskAssignedToRobot(cp,t));
resultsPartners(cp,t,'assigned_to') = 1$(taskAssignedToRobot(cp,t) eq 0) + 2$(taskAssignedToRobot(cp,t) eq 1);
resultsPartners(cp,t,'assigned_to')$(not istask(cp,t)) = 0;
display resultsPartners;

parameter robotPartnerCompletion(p)		"The completion time of each process";
robotPartnerCompletion(cp) = compprocess.l(cp);
display robotPartnerCompletion;

parameter workingTimePartners(p,wkr)		"The total amount of time that worker wkr is active during process p";
workingTimePartners(cp,w) = sum((t,time), workerdoingtask.l(cp,t,w,time));
display workingTimePartners;

parameter idleTimePartners(p,wkr)		"The percentage of time that worker wkr is not assigned a task throughout process p";
idleTimePartners(cp,w)$(robotPartnerCompletion(cp) ne 0) = (robotPartnerCompletion(cp) - workingTimePartners(cp,w)) / robotPartnerCompletion(cp);
idleTimePartners(cp,w)$(idleTimePartners(cp,w) lt 0.001)=0; 
display idleTimePartners;

parameter strainPartners(p);
strainPartners(p) = strainindex.l(p);
display strainPartners;



parameter assignment(p,t,wkr);
assignment(p,t,wkr) = assigned.l(p,t,wkr);
display assignment;

parameter usep(p,perms);
usep(p,perms) = useperm.l(p,perms);
display usep;

parameter pindex(p);
pindex(p) = permindex.l(p);
display pindex;




* Model using Pareto function and compare to non-Pareto

alias(paretointerval, i);

free variable pareto(i)				"Pareto objective function balancing time (weighted i) and strain (weighted 1-i)";
free variable paretoobj				"Single Pareto objective value";

equations
defparetotimestrain(i)				"Calculate the pareto function using completion time and strain index at weight i",
defparetoobj_0					"Define the pareto objective for interval 0"
;

* Define pareto function
defparetotimestrain(i)..
pareto(i) =e= sum(cp, ((ord(i)-1)/10)*(compprocess(cp)/maxtime(cp)) + (1-((ord(i)-1)/10))*(strainindex(cp)/maxstrain(cp)) );

* Solve for interval 0
defparetoobj_0..
  paretoobj =e= pareto('0');

model humanRobotPartnersPareto_0 /assignforfulldurationpartners, assignforfulldurationhuman, assignforfulldurationrobot, assignalltasks, maxnumtasksatatimepartners, maxonetaskperworkerpertimepartners, maxoneworkerpertaskpartners, nobreaksintaskshuman, nobreaksintasksrobot, nosharedtaskshuman, nosharedtasksrobot, defpredecessortaskpartners, defsameworkerpredecessorshuman, defsameworkerpredecessorsrobot, defcompprocesspartners, defcompallpartners, defstrainindex, defparetotimestrain, defparetoobj_0, defassigned1, defassigned2, defpermutationindex, defuseperm1, defuseperm2/;
solve humanRobotPartnersPareto_0 using mip minimizing paretoobj;

parameter paretoCompletion(p,i)			"The completion time of each process";
paretoCompletion(cp,'0') = compprocess.l(cp);

parameter strainPareto(p,i);
strainPareto(cp,'0') = strainindex.l(cp);

parameter objectiveValuePareto(i);
objectiveValuePareto('0') = paretoobj.l;

parameter workingTimePareto(p,wkr,i)		"The total amount of time that worker wkr is active during process p";
workingTimePareto(cp,w,'0') = sum((t,time), workerdoingtask.l(cp,t,w,time));

parameter robotWorkingTime(p,i);
robotWorkingTime(cp,'0') = workingTimePareto(cp,'r1','0');

parameter humanWorkingTime(p,i);
humanWorkingTime(cp,'0') = workingTimePareto(cp,'h1','0');

parameter tasklist0(p,t,time,wkr);
tasklist0(cp,t,time,w) = workerdoingtask.l(cp,t,w,time);
display tasklist0;


* Solve for interval 0.1
equations
defparetoobj_1				"Define the pareto objective for interval 0.1";

defparetoobj_1..
  paretoobj =e= pareto('1');

model humanRobotPartnersPareto_1 /assignforfulldurationpartners, assignforfulldurationhuman, assignforfulldurationrobot, assignalltasks, maxnumtasksatatimepartners, maxonetaskperworkerpertimepartners, maxoneworkerpertaskpartners, nobreaksintaskshuman, nobreaksintasksrobot, nosharedtaskshuman, nosharedtasksrobot, defpredecessortaskpartners, defsameworkerpredecessorshuman, defsameworkerpredecessorsrobot, defcompprocesspartners, defcompallpartners, defstrainindex, defparetotimestrain, defparetoobj_1, defassigned1, defassigned2, defpermutationindex, defuseperm1, defuseperm2/;
solve humanRobotPartnersPareto_1 using mip minimizing paretoobj;

paretoCompletion(cp,'1') = compprocess.l(cp);
strainPareto(cp,'1') = strainindex.l(cp);
objectiveValuePareto('1') = paretoobj.l;
workingTimePareto(cp,w,'1') = sum((t,time), workerdoingtask.l(cp,t,w,time));
robotWorkingTime(cp,'1') = workingTimePareto(cp,'r1','1');
humanWorkingTime(cp,'1') = workingTimePareto(cp,'h1','1');

parameter tasklist1(p,t,time,wkr);
tasklist1(cp,t,time,w) = workerdoingtask.l(cp,t,w,time);
display tasklist1;


* Solve for interval 0.2
equations
defparetoobj_2				"Define the pareto objective for interval 0.2";

defparetoobj_2..
  paretoobj =e= pareto('2');

model humanRobotPartnersPareto_2 /assignforfulldurationpartners, assignforfulldurationhuman, assignforfulldurationrobot, assignalltasks, maxnumtasksatatimepartners, maxonetaskperworkerpertimepartners, maxoneworkerpertaskpartners, nobreaksintaskshuman, nobreaksintasksrobot, nosharedtaskshuman, nosharedtasksrobot, defpredecessortaskpartners, defsameworkerpredecessorshuman, defsameworkerpredecessorsrobot, defcompprocesspartners, defcompallpartners, defstrainindex, defparetotimestrain, defparetoobj_2, defassigned1, defassigned2, defpermutationindex, defuseperm1, defuseperm2/;
solve humanRobotPartnersPareto_2 using mip minimizing paretoobj;

paretoCompletion(cp,'2') = compprocess.l(cp);
strainPareto(cp,'2') = strainindex.l(cp);
objectiveValuePareto('2') = paretoobj.l;
workingTimePareto(cp,w,'2') = sum((t,time), workerdoingtask.l(cp,t,w,time));
robotWorkingTime(cp,'2') = workingTimePareto(cp,'r1','2');
humanWorkingTime(cp,'2') = workingTimePareto(cp,'h1','2');

parameter tasklist2(p,t,time,wkr);
tasklist2(cp,t,time,w) = workerdoingtask.l(cp,t,w,time);
display tasklist2;


* Solve for interval 0.3
equations
defparetoobj_3				"Define the pareto objective for interval 0.3";

defparetoobj_3..
  paretoobj =e= pareto('3');

model humanRobotPartnersPareto_3 /assignforfulldurationpartners, assignforfulldurationhuman, assignforfulldurationrobot, assignalltasks, maxnumtasksatatimepartners, maxonetaskperworkerpertimepartners, maxoneworkerpertaskpartners, nobreaksintaskshuman, nobreaksintasksrobot, nosharedtaskshuman, nosharedtasksrobot, defpredecessortaskpartners, defsameworkerpredecessorshuman, defsameworkerpredecessorsrobot, defcompprocesspartners, defcompallpartners, defstrainindex, defparetotimestrain, defparetoobj_3, defassigned1, defassigned2, defpermutationindex, defuseperm1, defuseperm2/;
solve humanRobotPartnersPareto_3 using mip minimizing paretoobj;

paretoCompletion(cp,'3') = compprocess.l(cp);
strainPareto(cp,'3') = strainindex.l(cp);
objectiveValuePareto('3') = paretoobj.l;
workingTimePareto(cp,w,'3') = sum((t,time), workerdoingtask.l(cp,t,w,time));
robotWorkingTime(cp,'3') = workingTimePareto(cp,'r1','3');
humanWorkingTime(cp,'3') = workingTimePareto(cp,'h1','3');

parameter tasklist3(p,t,time,wkr);
tasklist3(cp,t,time,w) = workerdoingtask.l(cp,t,w,time);
display tasklist3;


* Solve for interval 0.4
equations
defparetoobj_4				"Define the pareto objective for interval 0.4";

defparetoobj_4..
  paretoobj =e= pareto('4');

model humanRobotPartnersPareto_4 /assignforfulldurationpartners, assignforfulldurationhuman, assignforfulldurationrobot, assignalltasks, maxnumtasksatatimepartners, maxonetaskperworkerpertimepartners, maxoneworkerpertaskpartners, nobreaksintaskshuman, nobreaksintasksrobot, nosharedtaskshuman, nosharedtasksrobot, defpredecessortaskpartners, defsameworkerpredecessorshuman, defsameworkerpredecessorsrobot, defcompprocesspartners, defcompallpartners, defstrainindex, defparetotimestrain, defparetoobj_4, defassigned1, defassigned2, defpermutationindex, defuseperm1, defuseperm2/;
solve humanRobotPartnersPareto_4 using mip minimizing paretoobj;

paretoCompletion(cp,'4') = compprocess.l(cp);
strainPareto(cp,'4') = strainindex.l(cp);
objectiveValuePareto('4') = paretoobj.l;
workingTimePareto(cp,w,'4') = sum((t,time), workerdoingtask.l(cp,t,w,time));
robotWorkingTime(cp,'4') = workingTimePareto(cp,'r1','4');
humanWorkingTime(cp,'4') = workingTimePareto(cp,'h1','4');

parameter tasklist4(p,t,time,wkr);
tasklist4(cp,t,time,w) = workerdoingtask.l(cp,t,w,time);
display tasklist4;


* Solve for interval 0.5
equations
defparetoobj_5				"Define the pareto objective for interval 0.5";

defparetoobj_5..
  paretoobj =e= pareto('5');

model humanRobotPartnersPareto_5 /assignforfulldurationpartners, assignforfulldurationhuman, assignforfulldurationrobot, assignalltasks, maxnumtasksatatimepartners, maxonetaskperworkerpertimepartners, maxoneworkerpertaskpartners, nobreaksintaskshuman, nobreaksintasksrobot, nosharedtaskshuman, nosharedtasksrobot, defpredecessortaskpartners, defsameworkerpredecessorshuman, defsameworkerpredecessorsrobot, defcompprocesspartners, defcompallpartners, defstrainindex, defparetotimestrain, defparetoobj_5, defassigned1, defassigned2, defpermutationindex, defuseperm1, defuseperm2/;
solve humanRobotPartnersPareto_5 using mip minimizing paretoobj;

paretoCompletion(cp,'5') = compprocess.l(cp);
strainPareto(cp,'5') = strainindex.l(cp);
objectiveValuePareto('5') = paretoobj.l;
workingTimePareto(cp,w,'5') = sum((t,time), workerdoingtask.l(cp,t,w,time));
robotWorkingTime(cp,'5') = workingTimePareto(cp,'r1','5');
humanWorkingTime(cp,'5') = workingTimePareto(cp,'h1','5');

parameter tasklist5(p,t,time,wkr);
tasklist5(cp,t,time,w) = workerdoingtask.l(cp,t,w,time);
display tasklist5;


* Solve for interval 0.6
equations
defparetoobj_6				"Define the pareto objective for interval 0.6";

defparetoobj_6..
  paretoobj =e= pareto('6');

model humanRobotPartnersPareto_6 /assignforfulldurationpartners, assignforfulldurationhuman, assignforfulldurationrobot, assignalltasks, maxnumtasksatatimepartners, maxonetaskperworkerpertimepartners, maxoneworkerpertaskpartners, nobreaksintaskshuman, nobreaksintasksrobot, nosharedtaskshuman, nosharedtasksrobot, defpredecessortaskpartners, defsameworkerpredecessorshuman, defsameworkerpredecessorsrobot, defcompprocesspartners, defcompallpartners, defstrainindex, defparetotimestrain, defparetoobj_6, defassigned1, defassigned2, defpermutationindex, defuseperm1, defuseperm2/;
solve humanRobotPartnersPareto_6 using mip minimizing paretoobj;

paretoCompletion(cp,'6') = compprocess.l(cp);
strainPareto(cp,'6') = strainindex.l(cp);
objectiveValuePareto('6') = paretoobj.l;
workingTimePareto(cp,w,'6') = sum((t,time), workerdoingtask.l(cp,t,w,time));
robotWorkingTime(cp,'6') = workingTimePareto(cp,'r1','6');
humanWorkingTime(cp,'6') = workingTimePareto(cp,'h1','6');

parameter tasklist6(p,t,time,wkr);
tasklist6(cp,t,time,w) = workerdoingtask.l(cp,t,w,time);
display tasklist6;


* Solve for interval 0.7
equations
defparetoobj_7				"Define the pareto objective for interval 0.7";

defparetoobj_7..
  paretoobj =e= pareto('7');

model humanRobotPartnersPareto_7 /assignforfulldurationpartners, assignforfulldurationhuman, assignforfulldurationrobot, assignalltasks, maxnumtasksatatimepartners, maxonetaskperworkerpertimepartners, maxoneworkerpertaskpartners, nobreaksintaskshuman, nobreaksintasksrobot, nosharedtaskshuman, nosharedtasksrobot, defpredecessortaskpartners, defsameworkerpredecessorshuman, defsameworkerpredecessorsrobot, defcompprocesspartners, defcompallpartners, defstrainindex, defparetotimestrain, defparetoobj_7, defassigned1, defassigned2, defpermutationindex, defuseperm1, defuseperm2/;
solve humanRobotPartnersPareto_7 using mip minimizing paretoobj;

paretoCompletion(cp,'7') = compprocess.l(cp);
strainPareto(cp,'7') = strainindex.l(cp);
objectiveValuePareto('7') = paretoobj.l;
workingTimePareto(cp,w,'7') = sum((t,time), workerdoingtask.l(cp,t,w,time));
robotWorkingTime(cp,'7') = workingTimePareto(cp,'r1','7');
humanWorkingTime(cp,'7') = workingTimePareto(cp,'h1','7');

parameter tasklist7(p,t,time,wkr);
tasklist7(cp,t,time,w) = workerdoingtask.l(cp,t,w,time);
display tasklist7;


* Solve for interval 0.8
equations
defparetoobj_8				"Define the pareto objective for interval 0.8";

defparetoobj_8..
  paretoobj =e= pareto('8');

model humanRobotPartnersPareto_8 /assignforfulldurationpartners, assignforfulldurationhuman, assignforfulldurationrobot, assignalltasks, maxnumtasksatatimepartners, maxonetaskperworkerpertimepartners, maxoneworkerpertaskpartners, nobreaksintaskshuman, nobreaksintasksrobot, nosharedtaskshuman, nosharedtasksrobot, defpredecessortaskpartners, defsameworkerpredecessorshuman, defsameworkerpredecessorsrobot, defcompprocesspartners, defcompallpartners, defstrainindex, defparetotimestrain, defparetoobj_8, defassigned1, defassigned2, defpermutationindex, defuseperm1, defuseperm2/;
solve humanRobotPartnersPareto_8 using mip minimizing paretoobj;

paretoCompletion(cp,'8') = compprocess.l(cp);
strainPareto(cp,'8') = strainindex.l(cp);
objectiveValuePareto('8') = paretoobj.l;
workingTimePareto(cp,w,'8') = sum((t,time), workerdoingtask.l(cp,t,w,time));
robotWorkingTime(cp,'8') = workingTimePareto(cp,'r1','8');
humanWorkingTime(cp,'8') = workingTimePareto(cp,'h1','8');

parameter tasklist8(p,t,time,wkr);
tasklist8(cp,t,time,w) = workerdoingtask.l(cp,t,w,time);
display tasklist8;


* Solve for interval 0.9
equations
defparetoobj_9				"Define the pareto objective for interval 0.9";

defparetoobj_9..
  paretoobj =e= pareto('9');

model humanRobotPartnersPareto_9 /assignforfulldurationpartners, assignforfulldurationhuman, assignforfulldurationrobot, assignalltasks, maxnumtasksatatimepartners, maxonetaskperworkerpertimepartners, maxoneworkerpertaskpartners, nobreaksintaskshuman, nobreaksintasksrobot, nosharedtaskshuman, nosharedtasksrobot, defpredecessortaskpartners, defsameworkerpredecessorshuman, defsameworkerpredecessorsrobot, defcompprocesspartners, defcompallpartners, defstrainindex, defparetotimestrain, defparetoobj_9, defassigned1, defassigned2, defpermutationindex, defuseperm1, defuseperm2/;
solve humanRobotPartnersPareto_9 using mip minimizing paretoobj;

paretoCompletion(cp,'9') = compprocess.l(cp);
strainPareto(cp,'9') = strainindex.l(cp);
objectiveValuePareto('9') = paretoobj.l;
workingTimePareto(cp,w,'9') = sum((t,time), workerdoingtask.l(cp,t,w,time));
robotWorkingTime(cp,'9') = workingTimePareto(cp,'r1','9');
humanWorkingTime(cp,'9') = workingTimePareto(cp,'h1','9');

parameter tasklist9(p,t,time,wkr);
tasklist9(cp,t,time,w) = workerdoingtask.l(cp,t,w,time);
display tasklist9;


* Solve for interval 1
equations
defparetoobj_10					"Define the pareto objective for interval 1";

defparetoobj_10..
  paretoobj =e= pareto('10');

model humanRobotPartnersPareto_10 /assignforfulldurationpartners, assignforfulldurationhuman, assignforfulldurationrobot, assignalltasks, maxnumtasksatatimepartners, maxonetaskperworkerpertimepartners, maxoneworkerpertaskpartners, nobreaksintaskshuman, nobreaksintasksrobot, nosharedtaskshuman, nosharedtasksrobot, defpredecessortaskpartners, defsameworkerpredecessorshuman, defsameworkerpredecessorsrobot, defcompprocesspartners, defcompallpartners, defstrainindex, defparetotimestrain, defparetoobj_10, defassigned1, defassigned2, defpermutationindex, defuseperm1, defuseperm2/;
solve humanRobotPartnersPareto_10 using mip minimizing paretoobj;

paretoCompletion(cp,'10') = compprocess.l(cp);
strainPareto(cp,'10') = strainindex.l(cp);
objectiveValuePareto('10') = paretoobj.l;
workingTimePareto(cp,w,'10') = sum((t,time), workerdoingtask.l(cp,t,w,time));
robotWorkingTime(cp,'10') = workingTimePareto(cp,'r1','10');
humanWorkingTime(cp,'10') = workingTimePareto(cp,'h1','10');

parameter tasklist10(p,t,time,wkr);
tasklist10(cp,t,time,w) = workerdoingtask.l(cp,t,w,time);
display tasklist10;






* Calculate remaining parameters and display them all
display paretoCompletion;
display strainPareto;

parameter baselineCompletion(p);
baselineCompletion(cp) = sum(t, duration(cp,t)$istask(cp,t));

parameter baselineStrain(p);
baselineStrain(cp) = sum(t, strain(cp,t)$istask(cp,t));

parameter timeDifference(p,i);
timeDifference(cp,i) = (paretoCompletion(cp,i) - baselineCompletion(cp)) / paretoCompletion(cp,i);

parameter strainDifference(p,i);
strainDifference(cp,i) = (strainPareto(cp,i) - baselineStrain(cp)) / strainPareto(cp,i);

parameter alphaValue(i);
alphaValue(i) = (ord(i)-1)/10;

parameter betaValue(i);
betaValue(i) = (1-((ord(i)-1)/10));

parameter maxCompletion(p);
maxCompletion(cp) = maxtime(cp);

parameter maxStrain(p);
maxStrain(cp) = maxstrain(cp);



parameter resultsPareto(p,i,paretodata)		"Display the completion time, strain, time difference, strain difference, and objective of each pareto interval";
resultsPareto(cp,i,'completion') = paretoCompletion(cp,i);
resultsPareto(cp,i,'alpha_val') = alphaValue(i);
resultsPareto(cp,i,'max_completion') = maxCompletion(cp);
resultsPareto(cp,i,'strain') = strainPareto(cp,i);
resultsPareto(cp,i,'beta_val') = betaValue(i);
resultsPareto(cp,i,'max_strain') = maxStrain(cp);
resultsPareto(cp,i,'time_dif') = timeDifference(cp,i);
resultsPareto(cp,i,'strain_dif') = strainDifference(cp,i);
resultsPareto(cp,i,'objective_val') = objectiveValuePareto(i);
display resultsPareto;


parameter robotWorkingTimePercent(p,i);
robotWorkingTimePercent(cp,i) = robotWorkingTime(cp,i) / paretoCompletion(cp,i);

parameter humanWorkingTimePercent(p,i);
humanWorkingTimePercent(cp,i) = humanWorkingTime(cp,i) / paretoCompletion(cp,i);

parameter robotIdleTime(p,i);
robotIdleTime(cp,i) = paretoCompletion(cp,i) - robotWorkingTime(cp,i);

parameter humanIdleTime(p,i);
humanIdleTime(cp,i) = paretoCompletion(cp,i) - humanWorkingTime(cp,i); 

parameter robotIdleTimePercent(p,i);
robotIdleTimePercent(cp,i) = robotIdleTime(cp,i) / paretoCompletion(cp,i);

parameter humanIdleTimePercent(p,i);
humanIdleTimePercent(cp,i) = humanIdleTime(cp,i) / paretoCompletion(cp,i);

parameter resultsWorking(p,i,paretoworking);
resultsWorking(cp,i,'humanworking') = humanWorkingTime(cp,i);
resultsWorking(cp,i,'humanidle') = humanIdleTime(cp,i);
resultsWorking(cp,i,'humanworkingperc') = humanWorkingTimePercent(cp,i);
resultsWorking(cp,i,'humanidle') = humanIdleTimePercent(cp,i);
resultsWorking(cp,i,'robotworking') = robotWorkingTime(cp,i);
resultsWorking(cp,i,'robotidle') = robotIdleTime(cp,i);
resultsWorking(cp,i,'robotworkingperc') = robotWorkingTimePercent(cp,i);
resultsWorking(cp,i,'robotidle') = robotIdleTimePercent(cp,i);
display resultsWorking;

display robotWorkingTime;
display robotIdleTime;
display robotIdleTimePercent;