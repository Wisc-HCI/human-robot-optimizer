$title Human Robot Scheduling Project, Margaret Pearce

option limrow=0, limcol=0;
option decimals=4;
option optcr=0.01;
option solprint=off;

$ontext
p1: Low Variation Assembly (Tops)
p2: Low Variation Assembly (Station 3: Drawers)
p3: Case Assembly (Station 1)
p4: Kitting (Station 1)
$offtext

set processes /p1*p3/;
alias(processes, process, p, j);

set paretointerval /0*10/;
set tasks /1*10/;
alias(tasks, task, t, t1, t2, k, k1);

* Define mean task durations for a single human operator
table duration(p,t)
	1	2	3	4	5	6	7	8	9	10	
p1	5	6	5	5	2	7	4	4	-1	-1
p2	7	4	1	4	7	1	1	-1	-1	-1
p3	5	5	5	5	6	4	5	15	3	3
;

set perms /0*1023/;
parameter permutation(p,perms);

permutation('p1', '0') = 0.0;
permutation('p1', '1') = 0.75;
permutation('p1', '2') = 0.5;
permutation('p1', '3') = 0.75;
permutation('p1', '4') = 1.5;
permutation('p1', '5') = 2.25;
permutation('p1', '6') = 1.5;
permutation('p1', '7') = 3.375;
permutation('p1', '8') = 0.75;
permutation('p1', '9') = 1.125;
permutation('p1', '10') = 1.125;
permutation('p1', '11') = 1.6875;
permutation('p1', '12') = 3.375;
permutation('p1', '13') = 5.0625;
permutation('p1', '14') = 5.0625;
permutation('p1', '15') = 6.75;
permutation('p1', '16') = 0.25;
permutation('p1', '17') = 0.75;
permutation('p1', '18') = 0.5;
permutation('p1', '19') = 1.125;
permutation('p1', '20') = 1.5;
permutation('p1', '21') = 3.375;
permutation('p1', '22') = 2.25;
permutation('p1', '23') = 3.375;
permutation('p1', '24') = 0.75;
permutation('p1', '25') = 1.6875;
permutation('p1', '26') = 1.6875;
permutation('p1', '27') = 1.6875;
permutation('p1', '28') = 5.0625;
permutation('p1', '29') = 5.0625;
permutation('p1', '30') = 5.0625;
permutation('p1', '31') = 6.75;
permutation('p1', '32') = 2.25;
permutation('p1', '33') = 3.375;
permutation('p1', '34') = 5.0625;
permutation('p1', '35') = 5.0625;
permutation('p1', '36') = 3.375;
permutation('p1', '37') = 5.0625;
permutation('p1', '38') = 5.0625;
permutation('p1', '39') = 6.75;
permutation('p1', '40') = 5.0625;
permutation('p1', '41') = 5.0625;
permutation('p1', '42') = 5.0625;
permutation('p1', '43') = 9.0;
permutation('p1', '44') = 5.0625;
permutation('p1', '45') = 6.75;
permutation('p1', '46') = 9.0;
permutation('p1', '47') = 9.0;
permutation('p1', '48') = 2.25;
permutation('p1', '49') = 3.375;
permutation('p1', '50') = 5.0625;
permutation('p1', '51') = 6.75;
permutation('p1', '52') = 5.0625;
permutation('p1', '53') = 6.75;
permutation('p1', '54') = 6.75;
permutation('p1', '55') = 6.75;
permutation('p1', '56') = 5.0625;
permutation('p1', '57') = 6.75;
permutation('p1', '58') = 6.75;
permutation('p1', '59') = 9.0;
permutation('p1', '60') = 6.75;
permutation('p1', '61') = 9.0;
permutation('p1', '62') = 9.0;
permutation('p1', '63') = 9.0;
permutation('p1', '64') = 2.25;
permutation('p1', '65') = 2.25;
permutation('p1', '66') = 2.25;
permutation('p1', '67') = 3.375;
permutation('p1', '68') = 2.25;
permutation('p1', '69') = 3.375;
permutation('p1', '70') = 3.375;
permutation('p1', '71') = 6.75;
permutation('p1', '72') = 3.375;
permutation('p1', '73') = 5.0625;
permutation('p1', '74') = 5.0625;
permutation('p1', '75') = 6.75;
permutation('p1', '76') = 5.0625;
permutation('p1', '77') = 6.75;
permutation('p1', '78') = 6.75;
permutation('p1', '79') = 6.75;
permutation('p1', '80') = 2.25;
permutation('p1', '81') = 2.25;
permutation('p1', '82') = 3.375;
permutation('p1', '83') = 3.375;
permutation('p1', '84') = 2.25;
permutation('p1', '85') = 3.375;
permutation('p1', '86') = 3.375;
permutation('p1', '87') = 6.75;
permutation('p1', '88') = 3.375;
permutation('p1', '89') = 5.0625;
permutation('p1', '90') = 5.0625;
permutation('p1', '91') = 6.75;
permutation('p1', '92') = 5.0625;
permutation('p1', '93') = 6.75;
permutation('p1', '94') = 6.75;
permutation('p1', '95') = 6.75;
permutation('p1', '96') = 3.375;
permutation('p1', '97') = 5.0625;
permutation('p1', '98') = 5.0625;
permutation('p1', '99') = 6.75;
permutation('p1', '100') = 5.0625;
permutation('p1', '101') = 6.75;
permutation('p1', '102') = 6.75;
permutation('p1', '103') = 6.75;
permutation('p1', '104') = 5.0625;
permutation('p1', '105') = 9.0;
permutation('p1', '106') = 9.0;
permutation('p1', '107') = 9.0;
permutation('p1', '108') = 9.0;
permutation('p1', '109') = 9.0;
permutation('p1', '110') = 9.0;
permutation('p1', '111') = 13.5;
permutation('p1', '112') = 5.0625;
permutation('p1', '113') = 5.0625;
permutation('p1', '114') = 6.75;
permutation('p1', '115') = 6.75;
permutation('p1', '116') = 5.0625;
permutation('p1', '117') = 6.75;
permutation('p1', '118') = 6.75;
permutation('p1', '119') = 6.75;
permutation('p1', '120') = 5.0625;
permutation('p1', '121') = 9.0;
permutation('p1', '122') = 9.0;
permutation('p1', '123') = 9.0;
permutation('p1', '124') = 9.0;
permutation('p1', '125') = 9.0;
permutation('p1', '126') = 9.0;
permutation('p1', '127') = 13.5;
permutation('p1', '128') = 1.0;
permutation('p1', '129') = 1.0;
permutation('p1', '130') = 1.0;
permutation('p1', '131') = 1.5;
permutation('p1', '132') = 3.0;
permutation('p1', '133') = 4.5;
permutation('p1', '134') = 4.5;
permutation('p1', '135') = 9.0;
permutation('p1', '136') = 1.5;
permutation('p1', '137') = 2.25;
permutation('p1', '138') = 2.25;
permutation('p1', '139') = 3.0;
permutation('p1', '140') = 6.75;
permutation('p1', '141') = 9.0;
permutation('p1', '142') = 9.0;
permutation('p1', '143') = 9.0;
permutation('p1', '144') = 1.0;
permutation('p1', '145') = 1.0;
permutation('p1', '146') = 1.5;
permutation('p1', '147') = 1.5;
permutation('p1', '148') = 3.0;
permutation('p1', '149') = 4.5;
permutation('p1', '150') = 4.5;
permutation('p1', '151') = 9.0;
permutation('p1', '152') = 1.5;
permutation('p1', '153') = 2.25;
permutation('p1', '154') = 2.25;
permutation('p1', '155') = 3.0;
permutation('p1', '156') = 6.75;
permutation('p1', '157') = 9.0;
permutation('p1', '158') = 9.0;
permutation('p1', '159') = 9.0;
permutation('p1', '160') = 3.0;
permutation('p1', '161') = 6.75;
permutation('p1', '162') = 6.75;
permutation('p1', '163') = 9.0;
permutation('p1', '164') = 6.75;
permutation('p1', '165') = 9.0;
permutation('p1', '166') = 9.0;
permutation('p1', '167') = 9.0;
permutation('p1', '168') = 6.75;
permutation('p1', '169') = 9.0;
permutation('p1', '170') = 12.0;
permutation('p1', '171') = 12.0;
permutation('p1', '172') = 9.0;
permutation('p1', '173') = 12.0;
permutation('p1', '174') = 12.0;
permutation('p1', '175') = 18.0;
permutation('p1', '176') = 4.5;
permutation('p1', '177') = 6.75;
permutation('p1', '178') = 9.0;
permutation('p1', '179') = 9.0;
permutation('p1', '180') = 6.75;
permutation('p1', '181') = 9.0;
permutation('p1', '182') = 9.0;
permutation('p1', '183') = 9.0;
permutation('p1', '184') = 6.75;
permutation('p1', '185') = 9.0;
permutation('p1', '186') = 12.0;
permutation('p1', '187') = 12.0;
permutation('p1', '188') = 12.0;
permutation('p1', '189') = 12.0;
permutation('p1', '190') = 12.0;
permutation('p1', '191') = 18.0;
permutation('p1', '192') = 3.0;
permutation('p1', '193') = 4.5;
permutation('p1', '194') = 4.5;
permutation('p1', '195') = 9.0;
permutation('p1', '196') = 4.5;
permutation('p1', '197') = 6.75;
permutation('p1', '198') = 9.0;
permutation('p1', '199') = 9.0;
permutation('p1', '200') = 6.75;
permutation('p1', '201') = 6.75;
permutation('p1', '202') = 9.0;
permutation('p1', '203') = 9.0;
permutation('p1', '204') = 6.75;
permutation('p1', '205') = 9.0;
permutation('p1', '206') = 9.0;
permutation('p1', '207') = 12.0;
permutation('p1', '208') = 3.0;
permutation('p1', '209') = 4.5;
permutation('p1', '210') = 4.5;
permutation('p1', '211') = 9.0;
permutation('p1', '212') = 4.5;
permutation('p1', '213') = 9.0;
permutation('p1', '214') = 9.0;
permutation('p1', '215') = 9.0;
permutation('p1', '216') = 6.75;
permutation('p1', '217') = 9.0;
permutation('p1', '218') = 9.0;
permutation('p1', '219') = 9.0;
permutation('p1', '220') = 9.0;
permutation('p1', '221') = 9.0;
permutation('p1', '222') = 9.0;
permutation('p1', '223') = 18.0;
permutation('p1', '224') = 6.75;
permutation('p1', '225') = 9.0;
permutation('p1', '226') = 9.0;
permutation('p1', '227') = 9.0;
permutation('p1', '228') = 9.0;
permutation('p1', '229') = 9.0;
permutation('p1', '230') = 9.0;
permutation('p1', '231') = 18.0;
permutation('p1', '232') = 12.0;
permutation('p1', '233') = 12.0;
permutation('p1', '234') = 12.0;
permutation('p1', '235') = 18.0;
permutation('p1', '236') = 12.0;
permutation('p1', '237') = 12.0;
permutation('p1', '238') = 18.0;
permutation('p1', '239') = 18.0;
permutation('p1', '240') = 6.75;
permutation('p1', '241') = 9.0;
permutation('p1', '242') = 9.0;
permutation('p1', '243') = 9.0;
permutation('p1', '244') = 9.0;
permutation('p1', '245') = 9.0;
permutation('p1', '246') = 9.0;
permutation('p1', '247') = 18.0;
permutation('p1', '248') = 12.0;
permutation('p1', '249') = 12.0;
permutation('p1', '250') = 12.0;
permutation('p1', '251') = 18.0;
permutation('p1', '252') = 12.0;
permutation('p1', '253') = 18.0;
permutation('p1', '254') = 18.0;
permutation('p1', '255') = 18.0;

permutation('p2', '0') = 0.0;
permutation('p2', '1') = 3.375;
permutation('p2', '2') = 0.5;
permutation('p2', '3') = 6.75;
permutation('p2', '4') = 0.25;
permutation('p2', '5') = 5.0625;
permutation('p2', '6') = 0.5;
permutation('p2', '7') = 6.75;
permutation('p2', '8') = 1.0;
permutation('p2', '9') = 9.0;
permutation('p2', '10') = 2.25;
permutation('p2', '11') = 12.0;
permutation('p2', '12') = 1.0;
permutation('p2', '13') = 9.0;
permutation('p2', '14') = 2.25;
permutation('p2', '15') = 12.0;
permutation('p2', '16') = 1.5;
permutation('p2', '17') = 6.75;
permutation('p2', '18') = 2.25;
permutation('p2', '19') = 9.0;
permutation('p2', '20') = 2.25;
permutation('p2', '21') = 9.0;
permutation('p2', '22') = 2.25;
permutation('p2', '23') = 9.0;
permutation('p2', '24') = 4.5;
permutation('p2', '25') = 12.0;
permutation('p2', '26') = 9.0;
permutation('p2', '27') = 18.0;
permutation('p2', '28') = 6.75;
permutation('p2', '29') = 12.0;
permutation('p2', '30') = 9.0;
permutation('p2', '31') = 18.0;
permutation('p2', '32') = 0.375;
permutation('p2', '33') = 5.0625;
permutation('p2', '34') = 0.75;
permutation('p2', '35') = 6.75;
permutation('p2', '36') = 0.375;
permutation('p2', '37') = 5.0625;
permutation('p2', '38') = 0.75;
permutation('p2', '39') = 9.0;
permutation('p2', '40') = 1.0;
permutation('p2', '41') = 9.0;
permutation('p2', '42') = 2.25;
permutation('p2', '43') = 12.0;
permutation('p2', '44') = 1.0;
permutation('p2', '45') = 12.0;
permutation('p2', '46') = 2.25;
permutation('p2', '47') = 12.0;
permutation('p2', '48') = 3.375;
permutation('p2', '49') = 9.0;
permutation('p2', '50') = 3.375;
permutation('p2', '51') = 9.0;
permutation('p2', '52') = 3.375;
permutation('p2', '53') = 9.0;
permutation('p2', '54') = 6.75;
permutation('p2', '55') = 13.5;
permutation('p2', '56') = 6.75;
permutation('p2', '57') = 12.0;
permutation('p2', '58') = 9.0;
permutation('p2', '59') = 18.0;
permutation('p2', '60') = 9.0;
permutation('p2', '61') = 18.0;
permutation('p2', '62') = 9.0;
permutation('p2', '63') = 18.0;
permutation('p2', '64') = 0.75;
permutation('p2', '65') = 5.0625;
permutation('p2', '66') = 1.5;
permutation('p2', '67') = 6.75;
permutation('p2', '68') = 0.75;
permutation('p2', '69') = 5.0625;
permutation('p2', '70') = 1.5;
permutation('p2', '71') = 9.0;
permutation('p2', '72') = 3.0;
permutation('p2', '73') = 9.0;
permutation('p2', '74') = 6.75;
permutation('p2', '75') = 12.0;
permutation('p2', '76') = 3.0;
permutation('p2', '77') = 12.0;
permutation('p2', '78') = 6.75;
permutation('p2', '79') = 12.0;
permutation('p2', '80') = 2.25;
permutation('p2', '81') = 6.75;
permutation('p2', '82') = 2.25;
permutation('p2', '83') = 9.0;
permutation('p2', '84') = 2.25;
permutation('p2', '85') = 9.0;
permutation('p2', '86') = 4.5;
permutation('p2', '87') = 13.5;
permutation('p2', '88') = 6.75;
permutation('p2', '89') = 12.0;
permutation('p2', '90') = 9.0;
permutation('p2', '91') = 18.0;
permutation('p2', '92') = 9.0;
permutation('p2', '93') = 18.0;
permutation('p2', '94') = 9.0;
permutation('p2', '95') = 18.0;
permutation('p2', '96') = 1.125;
permutation('p2', '97') = 5.0625;
permutation('p2', '98') = 2.25;
permutation('p2', '99') = 9.0;
permutation('p2', '100') = 2.25;
permutation('p2', '101') = 5.0625;
permutation('p2', '102') = 2.25;
permutation('p2', '103') = 9.0;
permutation('p2', '104') = 3.0;
permutation('p2', '105') = 12.0;
permutation('p2', '106') = 6.75;
permutation('p2', '107') = 12.0;
permutation('p2', '108') = 4.5;
permutation('p2', '109') = 12.0;
permutation('p2', '110') = 6.75;
permutation('p2', '111') = 12.0;
permutation('p2', '112') = 3.375;
permutation('p2', '113') = 9.0;
permutation('p2', '114') = 6.75;
permutation('p2', '115') = 13.5;
permutation('p2', '116') = 3.375;
permutation('p2', '117') = 9.0;
permutation('p2', '118') = 6.75;
permutation('p2', '119') = 13.5;
permutation('p2', '120') = 9.0;
permutation('p2', '121') = 18.0;
permutation('p2', '122') = 9.0;
permutation('p2', '123') = 18.0;
permutation('p2', '124') = 9.0;
permutation('p2', '125') = 18.0;
permutation('p2', '126') = 9.0;
permutation('p2', '127') = 18.0;

permutation('p3', '0') = 0.0;
permutation('p3', '1') = 0.28125;
permutation('p3', '2') = 0.1875;
permutation('p3', '3') = 0.5625;
permutation('p3', '4') = 0.0625;
permutation('p3', '5') = 0.5625;
permutation('p3', '6') = 0.375;
permutation('p3', '7') = 0.5625;
permutation('p3', '8') = 0.125;
permutation('p3', '9') = 0.75;
permutation('p3', '10') = 0.75;
permutation('p3', '11') = 0.75;
permutation('p3', '12') = 0.25;
permutation('p3', '13') = 0.75;
permutation('p3', '14') = 0.75;
permutation('p3', '15') = 1.125;
permutation('p3', '16') = 0.125;
permutation('p3', '17') = 0.5625;
permutation('p3', '18') = 0.375;
permutation('p3', '19') = 0.5625;
permutation('p3', '20') = 0.125;
permutation('p3', '21') = 0.5625;
permutation('p3', '22') = 0.375;
permutation('p3', '23') = 0.84375;
permutation('p3', '24') = 0.25;
permutation('p3', '25') = 0.75;
permutation('p3', '26') = 0.75;
permutation('p3', '27') = 1.125;
permutation('p3', '28') = 0.25;
permutation('p3', '29') = 1.125;
permutation('p3', '30') = 1.125;
permutation('p3', '31') = 1.125;
permutation('p3', '32') = 0.09375;
permutation('p3', '33') = 0.5625;
permutation('p3', '34') = 0.5625;
permutation('p3', '35') = 0.5625;
permutation('p3', '36') = 0.1875;
permutation('p3', '37') = 0.5625;
permutation('p3', '38') = 0.5625;
permutation('p3', '39') = 0.84375;
permutation('p3', '40') = 0.25;
permutation('p3', '41') = 0.75;
permutation('p3', '42') = 0.75;
permutation('p3', '43') = 1.125;
permutation('p3', '44') = 0.25;
permutation('p3', '45') = 1.125;
permutation('p3', '46') = 1.125;
permutation('p3', '47') = 1.125;
permutation('p3', '48') = 0.1875;
permutation('p3', '49') = 0.5625;
permutation('p3', '50') = 0.5625;
permutation('p3', '51') = 0.84375;
permutation('p3', '52') = 0.1875;
permutation('p3', '53') = 0.84375;
permutation('p3', '54') = 0.84375;
permutation('p3', '55') = 0.84375;
permutation('p3', '56') = 0.25;
permutation('p3', '57') = 1.125;
permutation('p3', '58') = 1.125;
permutation('p3', '59') = 1.125;
permutation('p3', '60') = 0.375;
permutation('p3', '61') = 1.125;
permutation('p3', '62') = 1.125;
permutation('p3', '63') = 1.5;
permutation('p3', '64') = 0.0625;
permutation('p3', '65') = 0.5625;
permutation('p3', '66') = 0.375;
permutation('p3', '67') = 0.5625;
permutation('p3', '68') = 0.125;
permutation('p3', '69') = 0.5625;
permutation('p3', '70') = 0.375;
permutation('p3', '71') = 0.84375;
permutation('p3', '72') = 0.25;
permutation('p3', '73') = 0.75;
permutation('p3', '74') = 0.75;
permutation('p3', '75') = 1.125;
permutation('p3', '76') = 0.25;
permutation('p3', '77') = 1.125;
permutation('p3', '78') = 1.125;
permutation('p3', '79') = 1.125;
permutation('p3', '80') = 0.125;
permutation('p3', '81') = 0.5625;
permutation('p3', '82') = 0.375;
permutation('p3', '83') = 0.84375;
permutation('p3', '84') = 0.125;
permutation('p3', '85') = 0.84375;
permutation('p3', '86') = 0.5625;
permutation('p3', '87') = 0.84375;
permutation('p3', '88') = 0.25;
permutation('p3', '89') = 1.125;
permutation('p3', '90') = 1.125;
permutation('p3', '91') = 1.125;
permutation('p3', '92') = 0.375;
permutation('p3', '93') = 1.125;
permutation('p3', '94') = 1.125;
permutation('p3', '95') = 1.5;
permutation('p3', '96') = 0.1875;
permutation('p3', '97') = 0.5625;
permutation('p3', '98') = 0.5625;
permutation('p3', '99') = 0.84375;
permutation('p3', '100') = 0.1875;
permutation('p3', '101') = 0.84375;
permutation('p3', '102') = 0.84375;
permutation('p3', '103') = 0.84375;
permutation('p3', '104') = 0.25;
permutation('p3', '105') = 1.125;
permutation('p3', '106') = 1.125;
permutation('p3', '107') = 1.125;
permutation('p3', '108') = 0.375;
permutation('p3', '109') = 1.125;
permutation('p3', '110') = 1.125;
permutation('p3', '111') = 1.5;
permutation('p3', '112') = 0.1875;
permutation('p3', '113') = 0.84375;
permutation('p3', '114') = 0.84375;
permutation('p3', '115') = 0.84375;
permutation('p3', '116') = 0.28125;
permutation('p3', '117') = 0.84375;
permutation('p3', '118') = 0.84375;
permutation('p3', '119') = 1.125;
permutation('p3', '120') = 0.375;
permutation('p3', '121') = 1.125;
permutation('p3', '122') = 1.125;
permutation('p3', '123') = 1.5;
permutation('p3', '124') = 0.375;
permutation('p3', '125') = 1.5;
permutation('p3', '126') = 1.5;
permutation('p3', '127') = 1.5;
permutation('p3', '128') = 0.1875;
permutation('p3', '129') = 0.84375;
permutation('p3', '130') = 0.84375;
permutation('p3', '131') = 0.84375;
permutation('p3', '132') = 0.28125;
permutation('p3', '133') = 0.84375;
permutation('p3', '134') = 0.84375;
permutation('p3', '135') = 1.125;
permutation('p3', '136') = 0.375;
permutation('p3', '137') = 1.125;
permutation('p3', '138') = 1.125;
permutation('p3', '139') = 1.5;
permutation('p3', '140') = 0.375;
permutation('p3', '141') = 1.5;
permutation('p3', '142') = 1.5;
permutation('p3', '143') = 1.5;
permutation('p3', '144') = 0.28125;
permutation('p3', '145') = 0.84375;
permutation('p3', '146') = 0.84375;
permutation('p3', '147') = 1.125;
permutation('p3', '148') = 0.28125;
permutation('p3', '149') = 1.125;
permutation('p3', '150') = 1.125;
permutation('p3', '151') = 1.125;
permutation('p3', '152') = 0.375;
permutation('p3', '153') = 1.5;
permutation('p3', '154') = 1.5;
permutation('p3', '155') = 1.5;
permutation('p3', '156') = 0.5;
permutation('p3', '157') = 1.5;
permutation('p3', '158') = 1.5;
permutation('p3', '159') = 1.5;
permutation('p3', '160') = 0.28125;
permutation('p3', '161') = 0.84375;
permutation('p3', '162') = 0.84375;
permutation('p3', '163') = 1.125;
permutation('p3', '164') = 0.28125;
permutation('p3', '165') = 1.125;
permutation('p3', '166') = 1.125;
permutation('p3', '167') = 1.125;
permutation('p3', '168') = 0.375;
permutation('p3', '169') = 1.5;
permutation('p3', '170') = 1.5;
permutation('p3', '171') = 1.5;
permutation('p3', '172') = 0.5;
permutation('p3', '173') = 1.5;
permutation('p3', '174') = 1.5;
permutation('p3', '175') = 1.5;
permutation('p3', '176') = 0.28125;
permutation('p3', '177') = 1.125;
permutation('p3', '178') = 1.125;
permutation('p3', '179') = 1.125;
permutation('p3', '180') = 0.375;
permutation('p3', '181') = 1.125;
permutation('p3', '182') = 1.125;
permutation('p3', '183') = 1.125;
permutation('p3', '184') = 0.5;
permutation('p3', '185') = 1.5;
permutation('p3', '186') = 1.5;
permutation('p3', '187') = 1.5;
permutation('p3', '188') = 0.5;
permutation('p3', '189') = 1.5;
permutation('p3', '190') = 1.5;
permutation('p3', '191') = 2.25;
permutation('p3', '192') = 0.28125;
permutation('p3', '193') = 0.84375;
permutation('p3', '194') = 0.84375;
permutation('p3', '195') = 1.125;
permutation('p3', '196') = 0.28125;
permutation('p3', '197') = 1.125;
permutation('p3', '198') = 1.125;
permutation('p3', '199') = 1.125;
permutation('p3', '200') = 0.375;
permutation('p3', '201') = 1.5;
permutation('p3', '202') = 1.5;
permutation('p3', '203') = 1.5;
permutation('p3', '204') = 0.5;
permutation('p3', '205') = 1.5;
permutation('p3', '206') = 1.5;
permutation('p3', '207') = 1.5;
permutation('p3', '208') = 0.28125;
permutation('p3', '209') = 1.125;
permutation('p3', '210') = 1.125;
permutation('p3', '211') = 1.125;
permutation('p3', '212') = 0.375;
permutation('p3', '213') = 1.125;
permutation('p3', '214') = 1.125;
permutation('p3', '215') = 1.125;
permutation('p3', '216') = 0.5;
permutation('p3', '217') = 1.5;
permutation('p3', '218') = 1.5;
permutation('p3', '219') = 1.5;
permutation('p3', '220') = 0.5;
permutation('p3', '221') = 1.5;
permutation('p3', '222') = 1.5;
permutation('p3', '223') = 3.375;
permutation('p3', '224') = 0.28125;
permutation('p3', '225') = 1.125;
permutation('p3', '226') = 1.125;
permutation('p3', '227') = 1.125;
permutation('p3', '228') = 0.375;
permutation('p3', '229') = 1.125;
permutation('p3', '230') = 1.125;
permutation('p3', '231') = 1.125;
permutation('p3', '232') = 0.5;
permutation('p3', '233') = 1.5;
permutation('p3', '234') = 1.5;
permutation('p3', '235') = 1.5;
permutation('p3', '236') = 0.5;
permutation('p3', '237') = 1.5;
permutation('p3', '238') = 1.5;
permutation('p3', '239') = 1.5;
permutation('p3', '240') = 0.375;
permutation('p3', '241') = 1.125;
permutation('p3', '242') = 1.125;
permutation('p3', '243') = 1.125;
permutation('p3', '244') = 0.375;
permutation('p3', '245') = 1.125;
permutation('p3', '246') = 1.125;
permutation('p3', '247') = 1.6875;
permutation('p3', '248') = 0.5;
permutation('p3', '249') = 1.5;
permutation('p3', '250') = 1.5;
permutation('p3', '251') = 2.25;
permutation('p3', '252') = 0.5;
permutation('p3', '253') = 2.25;
permutation('p3', '254') = 2.25;
permutation('p3', '255') = 3.375;
permutation('p3', '256') = 0.0625;
permutation('p3', '257') = 0.5625;
permutation('p3', '258') = 0.375;
permutation('p3', '259') = 0.5625;
permutation('p3', '260') = 0.125;
permutation('p3', '261') = 0.5625;
permutation('p3', '262') = 0.375;
permutation('p3', '263') = 0.84375;
permutation('p3', '264') = 0.25;
permutation('p3', '265') = 0.75;
permutation('p3', '266') = 0.75;
permutation('p3', '267') = 1.125;
permutation('p3', '268') = 0.25;
permutation('p3', '269') = 1.125;
permutation('p3', '270') = 1.125;
permutation('p3', '271') = 1.125;
permutation('p3', '272') = 0.125;
permutation('p3', '273') = 0.5625;
permutation('p3', '274') = 0.375;
permutation('p3', '275') = 0.84375;
permutation('p3', '276') = 0.125;
permutation('p3', '277') = 0.84375;
permutation('p3', '278') = 0.5625;
permutation('p3', '279') = 0.84375;
permutation('p3', '280') = 0.25;
permutation('p3', '281') = 1.125;
permutation('p3', '282') = 1.125;
permutation('p3', '283') = 1.125;
permutation('p3', '284') = 0.375;
permutation('p3', '285') = 1.125;
permutation('p3', '286') = 1.125;
permutation('p3', '287') = 1.5;
permutation('p3', '288') = 0.1875;
permutation('p3', '289') = 0.5625;
permutation('p3', '290') = 0.5625;
permutation('p3', '291') = 0.84375;
permutation('p3', '292') = 0.1875;
permutation('p3', '293') = 0.84375;
permutation('p3', '294') = 0.84375;
permutation('p3', '295') = 0.84375;
permutation('p3', '296') = 0.25;
permutation('p3', '297') = 1.125;
permutation('p3', '298') = 1.125;
permutation('p3', '299') = 1.125;
permutation('p3', '300') = 0.375;
permutation('p3', '301') = 1.125;
permutation('p3', '302') = 1.125;
permutation('p3', '303') = 1.125;
permutation('p3', '304') = 0.1875;
permutation('p3', '305') = 0.84375;
permutation('p3', '306') = 0.84375;
permutation('p3', '307') = 0.84375;
permutation('p3', '308') = 0.28125;
permutation('p3', '309') = 0.84375;
permutation('p3', '310') = 0.84375;
permutation('p3', '311') = 1.125;
permutation('p3', '312') = 0.375;
permutation('p3', '313') = 1.125;
permutation('p3', '314') = 1.125;
permutation('p3', '315') = 1.5;
permutation('p3', '316') = 0.375;
permutation('p3', '317') = 1.5;
permutation('p3', '318') = 1.5;
permutation('p3', '319') = 1.5;
permutation('p3', '320') = 0.125;
permutation('p3', '321') = 0.5625;
permutation('p3', '322') = 0.375;
permutation('p3', '323') = 0.84375;
permutation('p3', '324') = 0.125;
permutation('p3', '325') = 0.84375;
permutation('p3', '326') = 0.5625;
permutation('p3', '327') = 0.84375;
permutation('p3', '328') = 0.25;
permutation('p3', '329') = 1.125;
permutation('p3', '330') = 1.125;
permutation('p3', '331') = 1.125;
permutation('p3', '332') = 0.375;
permutation('p3', '333') = 1.125;
permutation('p3', '334') = 1.125;
permutation('p3', '335') = 1.5;
permutation('p3', '336') = 0.125;
permutation('p3', '337') = 0.84375;
permutation('p3', '338') = 0.5625;
permutation('p3', '339') = 0.84375;
permutation('p3', '340') = 0.1875;
permutation('p3', '341') = 0.84375;
permutation('p3', '342') = 0.5625;
permutation('p3', '343') = 1.125;
permutation('p3', '344') = 0.375;
permutation('p3', '345') = 1.125;
permutation('p3', '346') = 1.125;
permutation('p3', '347') = 1.5;
permutation('p3', '348') = 0.375;
permutation('p3', '349') = 1.5;
permutation('p3', '350') = 1.5;
permutation('p3', '351') = 2.25;
permutation('p3', '352') = 0.1875;
permutation('p3', '353') = 0.84375;
permutation('p3', '354') = 0.84375;
permutation('p3', '355') = 0.84375;
permutation('p3', '356') = 0.28125;
permutation('p3', '357') = 0.84375;
permutation('p3', '358') = 0.84375;
permutation('p3', '359') = 0.84375;
permutation('p3', '360') = 0.375;
permutation('p3', '361') = 1.125;
permutation('p3', '362') = 1.125;
permutation('p3', '363') = 1.125;
permutation('p3', '364') = 0.375;
permutation('p3', '365') = 1.125;
permutation('p3', '366') = 1.125;
permutation('p3', '367') = 1.5;
permutation('p3', '368') = 0.28125;
permutation('p3', '369') = 0.84375;
permutation('p3', '370') = 0.84375;
permutation('p3', '371') = 1.125;
permutation('p3', '372') = 0.28125;
permutation('p3', '373') = 1.125;
permutation('p3', '374') = 1.125;
permutation('p3', '375') = 1.125;
permutation('p3', '376') = 0.375;
permutation('p3', '377') = 1.5;
permutation('p3', '378') = 1.5;
permutation('p3', '379') = 1.5;
permutation('p3', '380') = 0.5;
permutation('p3', '381') = 1.5;
permutation('p3', '382') = 1.5;
permutation('p3', '383') = 2.25;
permutation('p3', '384') = 0.28125;
permutation('p3', '385') = 0.84375;
permutation('p3', '386') = 0.84375;
permutation('p3', '387') = 1.125;
permutation('p3', '388') = 0.28125;
permutation('p3', '389') = 1.125;
permutation('p3', '390') = 1.125;
permutation('p3', '391') = 1.125;
permutation('p3', '392') = 0.375;
permutation('p3', '393') = 1.5;
permutation('p3', '394') = 1.5;
permutation('p3', '395') = 1.5;
permutation('p3', '396') = 0.5;
permutation('p3', '397') = 1.5;
permutation('p3', '398') = 1.5;
permutation('p3', '399') = 1.5;
permutation('p3', '400') = 0.28125;
permutation('p3', '401') = 1.125;
permutation('p3', '402') = 1.125;
permutation('p3', '403') = 1.125;
permutation('p3', '404') = 0.375;
permutation('p3', '405') = 1.125;
permutation('p3', '406') = 1.125;
permutation('p3', '407') = 1.125;
permutation('p3', '408') = 0.5;
permutation('p3', '409') = 1.5;
permutation('p3', '410') = 1.5;
permutation('p3', '411') = 1.5;
permutation('p3', '412') = 0.5;
permutation('p3', '413') = 1.5;
permutation('p3', '414') = 1.5;
permutation('p3', '415') = 1.5;
permutation('p3', '416') = 0.28125;
permutation('p3', '417') = 0.84375;
permutation('p3', '418') = 0.84375;
permutation('p3', '419') = 1.125;
permutation('p3', '420') = 0.28125;
permutation('p3', '421') = 1.125;
permutation('p3', '422') = 1.125;
permutation('p3', '423') = 1.125;
permutation('p3', '424') = 0.375;
permutation('p3', '425') = 1.5;
permutation('p3', '426') = 1.5;
permutation('p3', '427') = 1.5;
permutation('p3', '428') = 0.5;
permutation('p3', '429') = 1.5;
permutation('p3', '430') = 1.5;
permutation('p3', '431') = 1.5;
permutation('p3', '432') = 0.375;
permutation('p3', '433') = 1.125;
permutation('p3', '434') = 1.125;
permutation('p3', '435') = 1.125;
permutation('p3', '436') = 0.375;
permutation('p3', '437') = 1.125;
permutation('p3', '438') = 1.125;
permutation('p3', '439') = 1.125;
permutation('p3', '440') = 0.5;
permutation('p3', '441') = 1.5;
permutation('p3', '442') = 1.5;
permutation('p3', '443') = 1.5;
permutation('p3', '444') = 0.5;
permutation('p3', '445') = 1.5;
permutation('p3', '446') = 1.5;
permutation('p3', '447') = 3.375;
permutation('p3', '448') = 0.28125;
permutation('p3', '449') = 1.125;
permutation('p3', '450') = 1.125;
permutation('p3', '451') = 1.125;
permutation('p3', '452') = 0.375;
permutation('p3', '453') = 1.125;
permutation('p3', '454') = 1.125;
permutation('p3', '455') = 1.125;
permutation('p3', '456') = 0.5;
permutation('p3', '457') = 1.5;
permutation('p3', '458') = 1.5;
permutation('p3', '459') = 1.5;
permutation('p3', '460') = 0.5;
permutation('p3', '461') = 1.5;
permutation('p3', '462') = 1.5;
permutation('p3', '463') = 2.25;
permutation('p3', '464') = 0.375;
permutation('p3', '465') = 1.125;
permutation('p3', '466') = 1.125;
permutation('p3', '467') = 1.125;
permutation('p3', '468') = 0.375;
permutation('p3', '469') = 1.125;
permutation('p3', '470') = 1.125;
permutation('p3', '471') = 1.6875;
permutation('p3', '472') = 0.5;
permutation('p3', '473') = 1.5;
permutation('p3', '474') = 1.5;
permutation('p3', '475') = 2.25;
permutation('p3', '476') = 0.5;
permutation('p3', '477') = 2.25;
permutation('p3', '478') = 2.25;
permutation('p3', '479') = 3.375;
permutation('p3', '480') = 0.28125;
permutation('p3', '481') = 1.125;
permutation('p3', '482') = 1.125;
permutation('p3', '483') = 1.125;
permutation('p3', '484') = 0.375;
permutation('p3', '485') = 1.125;
permutation('p3', '486') = 1.125;
permutation('p3', '487') = 1.125;
permutation('p3', '488') = 0.5;
permutation('p3', '489') = 1.5;
permutation('p3', '490') = 1.5;
permutation('p3', '491') = 1.5;
permutation('p3', '492') = 0.5;
permutation('p3', '493') = 1.5;
permutation('p3', '494') = 1.5;
permutation('p3', '495') = 3.375;
permutation('p3', '496') = 0.375;
permutation('p3', '497') = 1.125;
permutation('p3', '498') = 1.125;
permutation('p3', '499') = 1.6875;
permutation('p3', '500') = 0.375;
permutation('p3', '501') = 1.125;
permutation('p3', '502') = 1.125;
permutation('p3', '503') = 2.53125;
permutation('p3', '504') = 0.5;
permutation('p3', '505') = 1.5;
permutation('p3', '506') = 1.5;
permutation('p3', '507') = 3.375;
permutation('p3', '508') = 0.5;
permutation('p3', '509') = 3.375;
permutation('p3', '510') = 3.375;
permutation('p3', '511') = 3.375;
permutation('p3', '512') = 0.1875;
permutation('p3', '513') = 0.5625;
permutation('p3', '514') = 0.375;
permutation('p3', '515') = 0.5625;
permutation('p3', '516') = 0.375;
permutation('p3', '517') = 0.5625;
permutation('p3', '518') = 0.375;
permutation('p3', '519') = 0.84375;
permutation('p3', '520') = 0.75;
permutation('p3', '521') = 0.75;
permutation('p3', '522') = 0.75;
permutation('p3', '523') = 1.125;
permutation('p3', '524') = 0.75;
permutation('p3', '525') = 1.125;
permutation('p3', '526') = 1.125;
permutation('p3', '527') = 1.125;
permutation('p3', '528') = 0.375;
permutation('p3', '529') = 0.5625;
permutation('p3', '530') = 0.375;
permutation('p3', '531') = 0.84375;
permutation('p3', '532') = 0.375;
permutation('p3', '533') = 0.84375;
permutation('p3', '534') = 0.5625;
permutation('p3', '535') = 0.84375;
permutation('p3', '536') = 0.75;
permutation('p3', '537') = 1.125;
permutation('p3', '538') = 1.125;
permutation('p3', '539') = 1.125;
permutation('p3', '540') = 1.125;
permutation('p3', '541') = 1.125;
permutation('p3', '542') = 1.125;
permutation('p3', '543') = 1.5;
permutation('p3', '544') = 0.5625;
permutation('p3', '545') = 0.5625;
permutation('p3', '546') = 0.5625;
permutation('p3', '547') = 0.84375;
permutation('p3', '548') = 0.5625;
permutation('p3', '549') = 0.84375;
permutation('p3', '550') = 0.84375;
permutation('p3', '551') = 0.84375;
permutation('p3', '552') = 0.75;
permutation('p3', '553') = 1.125;
permutation('p3', '554') = 1.125;
permutation('p3', '555') = 1.125;
permutation('p3', '556') = 1.125;
permutation('p3', '557') = 1.125;
permutation('p3', '558') = 1.125;
permutation('p3', '559') = 1.125;
permutation('p3', '560') = 0.5625;
permutation('p3', '561') = 0.84375;
permutation('p3', '562') = 0.84375;
permutation('p3', '563') = 0.84375;
permutation('p3', '564') = 0.84375;
permutation('p3', '565') = 0.84375;
permutation('p3', '566') = 0.84375;
permutation('p3', '567') = 1.125;
permutation('p3', '568') = 1.125;
permutation('p3', '569') = 1.125;
permutation('p3', '570') = 1.125;
permutation('p3', '571') = 1.5;
permutation('p3', '572') = 1.125;
permutation('p3', '573') = 1.5;
permutation('p3', '574') = 1.5;
permutation('p3', '575') = 1.5;
permutation('p3', '576') = 0.375;
permutation('p3', '577') = 0.5625;
permutation('p3', '578') = 0.375;
permutation('p3', '579') = 0.84375;
permutation('p3', '580') = 0.375;
permutation('p3', '581') = 0.84375;
permutation('p3', '582') = 0.5625;
permutation('p3', '583') = 0.84375;
permutation('p3', '584') = 0.75;
permutation('p3', '585') = 1.125;
permutation('p3', '586') = 1.125;
permutation('p3', '587') = 1.125;
permutation('p3', '588') = 1.125;
permutation('p3', '589') = 1.125;
permutation('p3', '590') = 1.125;
permutation('p3', '591') = 1.5;
permutation('p3', '592') = 0.375;
permutation('p3', '593') = 0.84375;
permutation('p3', '594') = 0.5625;
permutation('p3', '595') = 0.84375;
permutation('p3', '596') = 0.5625;
permutation('p3', '597') = 0.84375;
permutation('p3', '598') = 0.5625;
permutation('p3', '599') = 1.125;
permutation('p3', '600') = 1.125;
permutation('p3', '601') = 1.125;
permutation('p3', '602') = 1.125;
permutation('p3', '603') = 1.5;
permutation('p3', '604') = 1.125;
permutation('p3', '605') = 1.5;
permutation('p3', '606') = 1.5;
permutation('p3', '607') = 1.5;
permutation('p3', '608') = 0.5625;
permutation('p3', '609') = 0.84375;
permutation('p3', '610') = 0.84375;
permutation('p3', '611') = 0.84375;
permutation('p3', '612') = 0.84375;
permutation('p3', '613') = 0.84375;
permutation('p3', '614') = 0.84375;
permutation('p3', '615') = 0.84375;
permutation('p3', '616') = 1.125;
permutation('p3', '617') = 1.125;
permutation('p3', '618') = 1.125;
permutation('p3', '619') = 1.125;
permutation('p3', '620') = 1.125;
permutation('p3', '621') = 1.125;
permutation('p3', '622') = 1.125;
permutation('p3', '623') = 1.5;
permutation('p3', '624') = 0.84375;
permutation('p3', '625') = 0.84375;
permutation('p3', '626') = 0.84375;
permutation('p3', '627') = 1.125;
permutation('p3', '628') = 0.84375;
permutation('p3', '629') = 1.125;
permutation('p3', '630') = 1.125;
permutation('p3', '631') = 1.125;
permutation('p3', '632') = 1.125;
permutation('p3', '633') = 1.5;
permutation('p3', '634') = 1.5;
permutation('p3', '635') = 1.5;
permutation('p3', '636') = 1.5;
permutation('p3', '637') = 1.5;
permutation('p3', '638') = 1.5;
permutation('p3', '639') = 2.25;
permutation('p3', '640') = 0.84375;
permutation('p3', '641') = 0.84375;
permutation('p3', '642') = 0.84375;
permutation('p3', '643') = 1.125;
permutation('p3', '644') = 0.84375;
permutation('p3', '645') = 1.125;
permutation('p3', '646') = 1.125;
permutation('p3', '647') = 1.125;
permutation('p3', '648') = 1.125;
permutation('p3', '649') = 1.5;
permutation('p3', '650') = 1.5;
permutation('p3', '651') = 1.5;
permutation('p3', '652') = 1.5;
permutation('p3', '653') = 1.5;
permutation('p3', '654') = 1.5;
permutation('p3', '655') = 1.5;
permutation('p3', '656') = 0.84375;
permutation('p3', '657') = 1.125;
permutation('p3', '658') = 1.125;
permutation('p3', '659') = 1.125;
permutation('p3', '660') = 1.125;
permutation('p3', '661') = 1.125;
permutation('p3', '662') = 1.125;
permutation('p3', '663') = 1.125;
permutation('p3', '664') = 1.5;
permutation('p3', '665') = 1.5;
permutation('p3', '666') = 1.5;
permutation('p3', '667') = 1.5;
permutation('p3', '668') = 1.5;
permutation('p3', '669') = 1.5;
permutation('p3', '670') = 1.5;
permutation('p3', '671') = 1.5;
permutation('p3', '672') = 0.84375;
permutation('p3', '673') = 0.84375;
permutation('p3', '674') = 0.84375;
permutation('p3', '675') = 1.125;
permutation('p3', '676') = 0.84375;
permutation('p3', '677') = 1.125;
permutation('p3', '678') = 1.125;
permutation('p3', '679') = 1.125;
permutation('p3', '680') = 1.125;
permutation('p3', '681') = 1.5;
permutation('p3', '682') = 1.5;
permutation('p3', '683') = 1.5;
permutation('p3', '684') = 1.5;
permutation('p3', '685') = 1.5;
permutation('p3', '686') = 1.5;
permutation('p3', '687') = 1.5;
permutation('p3', '688') = 1.125;
permutation('p3', '689') = 1.125;
permutation('p3', '690') = 1.125;
permutation('p3', '691') = 1.125;
permutation('p3', '692') = 1.125;
permutation('p3', '693') = 1.125;
permutation('p3', '694') = 1.125;
permutation('p3', '695') = 1.125;
permutation('p3', '696') = 1.5;
permutation('p3', '697') = 1.5;
permutation('p3', '698') = 1.5;
permutation('p3', '699') = 1.5;
permutation('p3', '700') = 1.5;
permutation('p3', '701') = 1.5;
permutation('p3', '702') = 1.5;
permutation('p3', '703') = 2.25;
permutation('p3', '704') = 0.84375;
permutation('p3', '705') = 1.125;
permutation('p3', '706') = 1.125;
permutation('p3', '707') = 1.125;
permutation('p3', '708') = 1.125;
permutation('p3', '709') = 1.125;
permutation('p3', '710') = 1.125;
permutation('p3', '711') = 1.125;
permutation('p3', '712') = 1.5;
permutation('p3', '713') = 1.5;
permutation('p3', '714') = 1.5;
permutation('p3', '715') = 1.5;
permutation('p3', '716') = 1.5;
permutation('p3', '717') = 1.5;
permutation('p3', '718') = 1.5;
permutation('p3', '719') = 1.5;
permutation('p3', '720') = 1.125;
permutation('p3', '721') = 1.125;
permutation('p3', '722') = 1.125;
permutation('p3', '723') = 1.125;
permutation('p3', '724') = 1.125;
permutation('p3', '725') = 1.125;
permutation('p3', '726') = 1.125;
permutation('p3', '727') = 1.125;
permutation('p3', '728') = 1.5;
permutation('p3', '729') = 1.5;
permutation('p3', '730') = 1.5;
permutation('p3', '731') = 1.5;
permutation('p3', '732') = 1.5;
permutation('p3', '733') = 1.5;
permutation('p3', '734') = 1.5;
permutation('p3', '735') = 3.375;
permutation('p3', '736') = 0.84375;
permutation('p3', '737') = 1.125;
permutation('p3', '738') = 1.125;
permutation('p3', '739') = 1.125;
permutation('p3', '740') = 1.125;
permutation('p3', '741') = 1.125;
permutation('p3', '742') = 1.125;
permutation('p3', '743') = 1.125;
permutation('p3', '744') = 1.5;
permutation('p3', '745') = 1.5;
permutation('p3', '746') = 1.5;
permutation('p3', '747') = 1.5;
permutation('p3', '748') = 1.5;
permutation('p3', '749') = 1.5;
permutation('p3', '750') = 1.5;
permutation('p3', '751') = 3.375;
permutation('p3', '752') = 1.125;
permutation('p3', '753') = 1.125;
permutation('p3', '754') = 1.125;
permutation('p3', '755') = 1.125;
permutation('p3', '756') = 1.125;
permutation('p3', '757') = 1.125;
permutation('p3', '758') = 1.125;
permutation('p3', '759') = 2.53125;
permutation('p3', '760') = 1.5;
permutation('p3', '761') = 1.5;
permutation('p3', '762') = 1.5;
permutation('p3', '763') = 3.375;
permutation('p3', '764') = 1.5;
permutation('p3', '765') = 3.375;
permutation('p3', '766') = 3.375;
permutation('p3', '767') = 3.375;
permutation('p3', '768') = 0.375;
permutation('p3', '769') = 0.5625;
permutation('p3', '770') = 0.375;
permutation('p3', '771') = 0.5625;
permutation('p3', '772') = 0.375;
permutation('p3', '773') = 0.5625;
permutation('p3', '774') = 0.375;
permutation('p3', '775') = 0.84375;
permutation('p3', '776') = 0.75;
permutation('p3', '777') = 0.75;
permutation('p3', '778') = 0.75;
permutation('p3', '779') = 1.125;
permutation('p3', '780') = 0.75;
permutation('p3', '781') = 1.125;
permutation('p3', '782') = 1.125;
permutation('p3', '783') = 1.125;
permutation('p3', '784') = 0.375;
permutation('p3', '785') = 0.84375;
permutation('p3', '786') = 0.5625;
permutation('p3', '787') = 0.84375;
permutation('p3', '788') = 0.5625;
permutation('p3', '789') = 0.84375;
permutation('p3', '790') = 0.5625;
permutation('p3', '791') = 0.84375;
permutation('p3', '792') = 1.125;
permutation('p3', '793') = 1.125;
permutation('p3', '794') = 1.125;
permutation('p3', '795') = 1.125;
permutation('p3', '796') = 1.125;
permutation('p3', '797') = 1.125;
permutation('p3', '798') = 1.125;
permutation('p3', '799') = 1.5;
permutation('p3', '800') = 0.5625;
permutation('p3', '801') = 0.5625;
permutation('p3', '802') = 0.5625;
permutation('p3', '803') = 0.84375;
permutation('p3', '804') = 0.5625;
permutation('p3', '805') = 0.84375;
permutation('p3', '806') = 0.84375;
permutation('p3', '807') = 0.84375;
permutation('p3', '808') = 0.75;
permutation('p3', '809') = 1.125;
permutation('p3', '810') = 1.125;
permutation('p3', '811') = 1.125;
permutation('p3', '812') = 1.125;
permutation('p3', '813') = 1.125;
permutation('p3', '814') = 1.125;
permutation('p3', '815') = 1.5;
permutation('p3', '816') = 0.5625;
permutation('p3', '817') = 0.84375;
permutation('p3', '818') = 0.84375;
permutation('p3', '819') = 0.84375;
permutation('p3', '820') = 0.84375;
permutation('p3', '821') = 0.84375;
permutation('p3', '822') = 0.84375;
permutation('p3', '823') = 1.125;
permutation('p3', '824') = 1.125;
permutation('p3', '825') = 1.125;
permutation('p3', '826') = 1.125;
permutation('p3', '827') = 1.5;
permutation('p3', '828') = 1.125;
permutation('p3', '829') = 1.5;
permutation('p3', '830') = 1.5;
permutation('p3', '831') = 1.5;
permutation('p3', '832') = 0.375;
permutation('p3', '833') = 0.5625;
permutation('p3', '834') = 0.375;
permutation('p3', '835') = 0.84375;
permutation('p3', '836') = 0.375;
permutation('p3', '837') = 0.84375;
permutation('p3', '838') = 0.5625;
permutation('p3', '839') = 0.84375;
permutation('p3', '840') = 0.75;
permutation('p3', '841') = 1.125;
permutation('p3', '842') = 1.125;
permutation('p3', '843') = 1.125;
permutation('p3', '844') = 1.125;
permutation('p3', '845') = 1.125;
permutation('p3', '846') = 1.125;
permutation('p3', '847') = 1.5;
permutation('p3', '848') = 0.5625;
permutation('p3', '849') = 0.84375;
permutation('p3', '850') = 0.5625;
permutation('p3', '851') = 0.84375;
permutation('p3', '852') = 0.5625;
permutation('p3', '853') = 0.84375;
permutation('p3', '854') = 0.5625;
permutation('p3', '855') = 1.125;
permutation('p3', '856') = 1.125;
permutation('p3', '857') = 1.125;
permutation('p3', '858') = 1.125;
permutation('p3', '859') = 1.5;
permutation('p3', '860') = 1.125;
permutation('p3', '861') = 1.5;
permutation('p3', '862') = 1.5;
permutation('p3', '863') = 2.25;
permutation('p3', '864') = 0.5625;
permutation('p3', '865') = 0.84375;
permutation('p3', '866') = 0.84375;
permutation('p3', '867') = 0.84375;
permutation('p3', '868') = 0.84375;
permutation('p3', '869') = 0.84375;
permutation('p3', '870') = 0.84375;
permutation('p3', '871') = 1.125;
permutation('p3', '872') = 1.125;
permutation('p3', '873') = 1.125;
permutation('p3', '874') = 1.125;
permutation('p3', '875') = 1.5;
permutation('p3', '876') = 1.125;
permutation('p3', '877') = 1.5;
permutation('p3', '878') = 1.5;
permutation('p3', '879') = 2.25;
permutation('p3', '880') = 0.84375;
permutation('p3', '881') = 0.84375;
permutation('p3', '882') = 0.84375;
permutation('p3', '883') = 1.125;
permutation('p3', '884') = 0.84375;
permutation('p3', '885') = 1.125;
permutation('p3', '886') = 1.125;
permutation('p3', '887') = 1.6875;
permutation('p3', '888') = 1.125;
permutation('p3', '889') = 1.5;
permutation('p3', '890') = 1.5;
permutation('p3', '891') = 2.25;
permutation('p3', '892') = 1.5;
permutation('p3', '893') = 2.25;
permutation('p3', '894') = 2.25;
permutation('p3', '895') = 2.25;
permutation('p3', '896') = 0.84375;
permutation('p3', '897') = 0.84375;
permutation('p3', '898') = 0.84375;
permutation('p3', '899') = 1.125;
permutation('p3', '900') = 0.84375;
permutation('p3', '901') = 1.125;
permutation('p3', '902') = 1.125;
permutation('p3', '903') = 1.125;
permutation('p3', '904') = 1.125;
permutation('p3', '905') = 1.5;
permutation('p3', '906') = 1.5;
permutation('p3', '907') = 1.5;
permutation('p3', '908') = 1.5;
permutation('p3', '909') = 1.5;
permutation('p3', '910') = 1.5;
permutation('p3', '911') = 1.5;
permutation('p3', '912') = 0.84375;
permutation('p3', '913') = 1.125;
permutation('p3', '914') = 1.125;
permutation('p3', '915') = 1.125;
permutation('p3', '916') = 1.125;
permutation('p3', '917') = 1.125;
permutation('p3', '918') = 1.125;
permutation('p3', '919') = 1.125;
permutation('p3', '920') = 1.5;
permutation('p3', '921') = 1.5;
permutation('p3', '922') = 1.5;
permutation('p3', '923') = 1.5;
permutation('p3', '924') = 1.5;
permutation('p3', '925') = 1.5;
permutation('p3', '926') = 1.5;
permutation('p3', '927') = 3.375;
permutation('p3', '928') = 0.84375;
permutation('p3', '929') = 1.125;
permutation('p3', '930') = 1.125;
permutation('p3', '931') = 1.125;
permutation('p3', '932') = 1.125;
permutation('p3', '933') = 1.125;
permutation('p3', '934') = 1.125;
permutation('p3', '935') = 1.125;
permutation('p3', '936') = 1.5;
permutation('p3', '937') = 1.5;
permutation('p3', '938') = 1.5;
permutation('p3', '939') = 1.5;
permutation('p3', '940') = 1.5;
permutation('p3', '941') = 1.5;
permutation('p3', '942') = 1.5;
permutation('p3', '943') = 2.25;
permutation('p3', '944') = 1.125;
permutation('p3', '945') = 1.125;
permutation('p3', '946') = 1.125;
permutation('p3', '947') = 1.125;
permutation('p3', '948') = 1.125;
permutation('p3', '949') = 1.125;
permutation('p3', '950') = 1.125;
permutation('p3', '951') = 1.6875;
permutation('p3', '952') = 1.5;
permutation('p3', '953') = 1.5;
permutation('p3', '954') = 1.5;
permutation('p3', '955') = 2.25;
permutation('p3', '956') = 1.5;
permutation('p3', '957') = 2.25;
permutation('p3', '958') = 2.25;
permutation('p3', '959') = 3.375;
permutation('p3', '960') = 0.84375;
permutation('p3', '961') = 1.125;
permutation('p3', '962') = 1.125;
permutation('p3', '963') = 1.125;
permutation('p3', '964') = 1.125;
permutation('p3', '965') = 1.125;
permutation('p3', '966') = 1.125;
permutation('p3', '967') = 1.125;
permutation('p3', '968') = 1.5;
permutation('p3', '969') = 1.5;
permutation('p3', '970') = 1.5;
permutation('p3', '971') = 1.5;
permutation('p3', '972') = 1.5;
permutation('p3', '973') = 1.5;
permutation('p3', '974') = 1.5;
permutation('p3', '975') = 3.375;
permutation('p3', '976') = 1.125;
permutation('p3', '977') = 1.125;
permutation('p3', '978') = 1.125;
permutation('p3', '979') = 1.6875;
permutation('p3', '980') = 1.125;
permutation('p3', '981') = 1.125;
permutation('p3', '982') = 1.125;
permutation('p3', '983') = 2.53125;
permutation('p3', '984') = 1.5;
permutation('p3', '985') = 1.5;
permutation('p3', '986') = 1.5;
permutation('p3', '987') = 3.375;
permutation('p3', '988') = 1.5;
permutation('p3', '989') = 3.375;
permutation('p3', '990') = 3.375;
permutation('p3', '991') = 3.375;
permutation('p3', '992') = 1.125;
permutation('p3', '993') = 1.125;
permutation('p3', '994') = 1.125;
permutation('p3', '995') = 1.125;
permutation('p3', '996') = 1.125;
permutation('p3', '997') = 1.125;
permutation('p3', '998') = 1.125;
permutation('p3', '999') = 2.53125;
permutation('p3', '1000') = 1.5;
permutation('p3', '1001') = 1.5;
permutation('p3', '1002') = 1.5;
permutation('p3', '1003') = 3.375;
permutation('p3', '1004') = 1.5;
permutation('p3', '1005') = 3.375;
permutation('p3', '1006') = 3.375;
permutation('p3', '1007') = 3.375;
permutation('p3', '1008') = 1.125;
permutation('p3', '1009') = 1.125;
permutation('p3', '1010') = 1.125;
permutation('p3', '1011') = 2.53125;
permutation('p3', '1012') = 1.125;
permutation('p3', '1013') = 2.53125;
permutation('p3', '1014') = 2.53125;
permutation('p3', '1015') = 2.53125;
permutation('p3', '1016') = 1.5;
permutation('p3', '1017') = 3.375;
permutation('p3', '1018') = 3.375;
permutation('p3', '1019') = 3.375;
permutation('p3', '1020') = 3.375;
permutation('p3', '1021') = 3.375;
permutation('p3', '1022') = 3.375;
permutation('p3', '1023') = 3.375;

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
predecessor('p1','5','3')=1;
predecessor('p1','5','4')=1;
predecessor('p1','6','5')=1;
predecessor('p1','7','6')=1;
predecessor('p1','8','7')=1;
predecessor('p1','9','7')=1;

* Predecessors for process 2
predecessor('p2','4','2')=1;
predecessor('p2','5','3')=2;
predecessor('p2','5','4')=1;
predecessor('p2','6','4')=1;
predecessor('p2','7','5')=1;

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
p1	1	1	1	1	0	1	0	1	-1	-1
p2	0	1	1	1	0	0	1	-1	-1	-1
p3	1	1	0	0	0	0	1	1	0	1
;

set isrobottask(p,t);
isrobottask(p,t) = no;
isrobottask(p,t) = yes$(robotCapable(p,t) eq 1);

* Estimate each task duration for a robotic partner
table robotDuration(p,t)
	1	2	3	4	5	6	7	8	9	10
p1	9	19	14	12	0	26	0	10	0	0
p2	0	13	10	17	0	0	10	0	0	0
p3	7	13	0	0	0	0	8	10	0	6
;


* Command line parameter indicates which process to optimize (default to 4)
$if not set runp $set runp 3



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
set time /time1*time100/;
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