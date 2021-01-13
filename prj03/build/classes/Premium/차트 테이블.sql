DROP TABLE MAAREACHART;

CREATE TABLE maareachart(  -- 메인 에이어리차트(년도별 프로젝트)
years varchar2(50), --년도
prototle NUMBER   -- 그해 프로젝트 총갯수
);
INSERT INTO maareachart values('2016',10);
INSERT INTO maareachart values('2017',40);
INSERT INTO maareachart values('2018',30);
INSERT INTO maareachart values('2019',20);
INSERT INTO maareachart values('2020',30);

SELECT years labels, prototle data FROM maareachart;



CREATE TABLE mabarchart(  -- 메인 바 차트 (프로젝트 진행상황)
protitle varchar2(100), --프로젝트명
maprogress NUMBER		--프로젝트 진척도
);

INSERT INTO MABARCHART values('사원관리프로그램',60);
INSERT INTO MABARCHART values('은행업무프로그램',70);
INSERT INTO MABARCHART values('인사시스템업데이트',40);
INSERT INTO MABARCHART values('회계관리시스템',50);
INSERT INTO MABARCHART values('회계관리시스템',50);
INSERT INTO MABARCHART values('회계관리시스템',50);
INSERT INTO MABARCHART values('회계관리시스템',50);
INSERT INTO MABARCHART values('회계관리시스템',50);
INSERT INTO MABARCHART values('회계관리시스템',50);


SELECT * FROM PROJECT;
SELECT * FROM MABARCHART;

SELECT protitle FROM MABARCHART;
SELECT maprogress FROM MABARCHART;


SELECT a.PRONO , a.protitle ,b.*
FROM PROJECT a, MABARCHART b
WHERE a.PRONO = b.PROTITLE ;



CREATE TABLE pmareachart( -- pm 에어리어차트 (월별 진척도,진행도) 
months varchar2(50), --월별
pmprogress NUMBER	 -- 프로젝트 진행도
);


SELECT * FROM MABARCHART m ;

INSERT INTO MABARCHART values('aaaa',20);
INSERT INTO MABARCHART values('aaaa',40);
INSERT INTO MABARCHART values('aaaa',50);
INSERT INTO MABARCHART values('aaaa',70);


SELECT * FROM PMBARCHART ;


SELECT * FROM PMAREACHART;

INSERT INTO PMAREACHART values('1월',20);
INSERT INTO PMAREACHART values('2월',40);
INSERT INTO PMAREACHART values('3월',60);
INSERT INTO PMAREACHART values('4월',80);
INSERT INTO PMAREACHART values('5월',100);
INSERT INTO PMAREACHART values('6월',10);
INSERT INTO PMAREACHART values('7월',20);
INSERT INTO PMAREACHART values('8월',30);
INSERT INTO PMAREACHART values('9월',50);
INSERT INTO PMAREACHART values('10월',70);
INSERT INTO PMAREACHART values('11월',80);


SELECT MONTHS FROM PMAREACHART;
SELECT pmprogress FROM PMAREACHART;


DROP TABLE PMBARCHART ;
CREATE TABLE pmbarchart( -- pm 바차트(맴버(팀원)별 진척도,진행도)
pm_name varchar2(50), -- 팀원이름(사원번호 조인?)
pro_cnt NUMBER  -- 프로젝트 맞고 있는 갯수
);

INSERT INTO PMBARCHART values('김',5);
INSERT INTO PMBARCHART values('김',3);
INSERT INTO PMBARCHART values('김',4);
INSERT INTO PMBARCHART values('김',6);

DROP TABLE PMPIECHART;
CREATE TABLE pmpiechart( -- pm 파이차트(프로젝트 전체 진행도)
Progress varchar2(50),
datas number
);
SELECT * FROM PMPIECHART;


SELECT progress
FROM PMPIECHART;

SELECT datas 
FROM PMPIECHART;


DROP TABLE PMPIECHART;
CREATE TABLE PMPIECHART( 
	progress  varchar2(50),
	ings varchar2(50),
	comp varchar2(50),
	dead varchar2(50)
);

INSERT INTO pmpiechart values('기한짧은','진행중','진행완료','기한짧은');
INSERT INTO pmpiechart values();
INSERT INTO pmpiechart values();
INSERT INTO pmpiechart values();

SELECT progress FROM PMPIECHART GROUP BY PROGRESS ;




SELECT COUNT(a.PRONO ) FROM PROJECT a ,PROGRESS b WHERE a.PROGRESS =b.PROGRESS GROUP BY b.PROGCONTENT ;
SELECT b.PROGCONTENT FROM PROJECT a ,PROGRESS b WHERE a.PROGRESS =b.PROGRESS GROUP BY b.PROGCONTENT ;
SELECT * FROM PROGRESS p2 ;
(SELECT COUNT(prono) FROM PROJECT WHERE STARTDATE > sysdate) progress,
	(SELECT COUNT(prono) FROM PROJECT WHERE  SYSDATE > STARTDATE) ings,
	(SELECT COUNT(prono) FROM PROJECT WHERE ENDDATE > sysdate) comp,
	(SELECT COUNT(*) FROM PROJECT WHERE TO_DATE(ENDDATE ,'YYYY-MM-DD') - TO_DATE(SYSDATE,'YYYY-MM-DD') BETWEEN 0 AND 7) dead

CREATE TABLE teambarChart( 
	tname varchar2(50),
	pro number
);


		SELECT b.pm, e.ename dname, a.WORKNO id, a.WORKTITLE text, 
		TO_CHAR(a.STARTDATE, 'DD-MM-YYYY') start_date ,
		(a.ENDDATE - a.STARTDATE ) duration,
		a.PROGPER progress
		FROM WORK a, PROJECT b, emp1 c, PROGRESS d, emp1 e
		WHERE 1=1
		and a.prono = b.prono
		AND b.pm = e.EMPNO 
		AND a.empno = c.empno
		AND a.PROGRESS = d.PROGRESS;

	
	SELECT * FROM PROJECT p;		SELECT b.pm, e.ename dname, a.WORKNO id, a.WORKTITLE text, 
		TO_CHAR(a.STARTDATE, 'DD-MM-YYYY') start_date ,
		(a.ENDDATE - a.STARTDATE ) duration,
		a.PROGPER progress
		FROM WORK a, PROJECT b, emp1 c, PROGRESS d, emp1 e
		WHERE 1=1
		and a.prono = b.prono
		AND b.pm = e.EMPNO 
		AND a.empno = c.empno
		AND a.PROGRESS = d.PROGRESS;
	
	SELECT * FROM PROJECT ;
	SELECT * FROM PROGRESS;
	
	
	-- 진행예정
	SELECT COUNT(prono) FROM PROJECT
	WHERE STARTDATE > sysdate;
	-- 진행중
	SELECT count(PRONO) FROM PROJECT
	WHERE  SYSDATE > STARTDATE ;
	-- 진행완료
	SELECT COUNT(prono) FROM PROJECT
	WHERE ENDDATE > sysdate;
	--기한짧은
	SELECT COUNT(*) FROM PROJECT WHERE
	TO_DATE(ENDDATE ,'YYYY-MM-DD') - TO_DATE(SYSDATE,'YYYY-MM-DD') BETWEEN 0 AND 7;

-- 진행예정,진행중,진행완료,기한짧은
SELECT
	(SELECT COUNT(prono) FROM PROJECT WHERE STARTDATE > sysdate) progress,
	(SELECT count(PRONO) FROM PROJECT WHERE  SYSDATE > STARTDATE) ings,
	(SELECT COUNT(prono) FROM PROJECT WHERE ENDDATE > sysdate) comp,
	(SELECT COUNT(*) FROM PROJECT WHERE TO_DATE(ENDDATE ,'YYYY-MM-DD') - TO_DATE(SYSDATE,'YYYY-MM-DD') BETWEEN 0 AND 7) dead
from dual;
	
SELECT PROGRESS FROM PMPIECHART;


SELECT COUNT(PRONO),TO_CHAR(STARTDATE ,'YYYY')FROM PROJECT 
GROUP BY to_char(STARTDATE ,'YYYY') ORDER BY TO_CHAR(STARTDATE ,'YYYY');



-- 년도별
SELECT TO_CHAR(startdate,'yyyy')  FROM PROJECT GROUP BY TO_CHAR(startdate,'yyyy') ;

-- 프젝수
SELECT count(prono) 프젝수 FROM PROJECT;


-- 프로젝트별
SELECT protitle FROM PROJECT ;
-- 진행상황



--월별
SELECT TO_CHAR(startdate,'MM') 월 FROM PROJECT GROUP BY TO_CHAR(startdate,'MM');
-- 진행도


-- 팀원별
SELECT b.ENAME FROM PROMEMBER a, EMP1 b  WHERE a.EMPNO = b.EMPNO and a.PRONO = 86 ;
-- 진행도
-- 해당 프로젝트의 업무 진행률을 합한값 / 해당 프로젝트의 업무 전체 갯수
SELECT 
(SELECT SUM(PROGPER ) FROM "WORK" w WHERE PRONO =86)  
/(SELECT COUNT(a.PRONO ) FROM "WORK" a, PROJECT b WHERE a.PRONO =86 AND a.PRONO =b.PRONO) avg
FROM dual;

SELECT * FROM PROJECT p ;

SELECT * FROM WORK;

SELECT EMPNO , (SELECT SUM(PROGPER ) FROM WORK WHERE PRONO =86) / COUNT(EMPNO) FROM "WORK" w GROUP BY EMPNO;
SELECT EMPNO FROM "WORK" a, (SELECT SUM(b.PROGPER )/COUNT(*) per FROM WORK b GROUP BY EMPNO) GROUP BY EMPNO;

SELECT COUNT(*) cnt FROM WORK GROUP BY EMPNO;
SELECT SUM(PROGPER) / COUNT(*) FROM WORK WHERE EMPNO = 1098;
SELECT * FROM WORK;
SELECT SUM(PROGPER ) / COUNT(*) FROM WORK WHERE EMPNO = 1098 AND PROGRESS != 0;

-- PM별
SELECT a.ENAME FROM EMP1 a, (SELECT PM, COUNT(*) FROM PROJECT GROUP BY PM) b WHERE a.EMPNO = PM ;
-- 프로젝트 갯수
SELECT COUNT(*) FROM PROJECT GROUP BY PM ;



SELECT * FROM PROJECT p ;

SELECT 	FROM PMPIECHART;



SELECT 
	(SELECT COUNT(prono) FROM PROJECT WHERE STARTDATE > sysdate) progress,
	(SELECT COUNT(prono) FROM PROJECT WHERE  SYSDATE > STARTDATE) ings,
	(SELECT COUNT(prono) FROM PROJECT WHERE ENDDATE > sysdate) comp,
	(SELECT COUNT(*) FROM PROJECT WHERE TO_DATE(ENDDATE ,'YYYY-MM-DD') - TO_DATE(SYSDATE,'YYYY-MM-DD') BETWEEN 0 AND 7) dead
from dual;


SELECT A.PM , B.ENAME 
FROM PROMEMBER a, EMP1 b 
WHERE a.EMPNO = b.EMPNO 
AND a.PRONO = 86;

SELECT * FROM PROMEMBER;

-- PM별
SELECT a.ENAME FROM EMP1 a, (SELECT PM, COUNT(*) FROM PROJECT GROUP BY PM) b WHERE a.EMPNO = PM ;
-- 프로젝트 갯수
SELECT PROTITLE FROM PROJECT GROUP BY protitle ;
-- 내가 맡은 프로젝트 갯수
SELECT a.MGR , b.PROTITLE FROM WORK a, PROJECT b WHERE a.MGR = 1020 GROUP BY a.mgr;



SELECT b.pm, e.ename dname, a.WORKNO id, a.WORKTITLE text, 
		TO_CHAR(a.STARTDATE, 'DD-MM-YYYY') start_date ,
		(a.ENDDATE - a.STARTDATE ) duration,
		a.PROGPER progress
		FROM WORK a, PROJECT b, emp1 c, PROGRESS d, emp1 e
		WHERE 1=1
		and a.prono = b.prono
		AND b.pm = e.EMPNO 
		AND a.empno = c.empno
		AND a.PROGRESS = d.PROGRESS;
	
SELECT 


;
SELECT a.prono, b.PROTITLE, b.pm, e.ename dname, a.WORKNO, a.WORKTITLE, 
a.empno, c.ename, a.STARTDATE, a.ENDDATE , d.PROGCONTENT , a.PROGPER 
FROM WORK a, PROJECT b, emp1 c, PROGRESS d, emp1 e
WHERE 1=1
and a.prono = b.prono
AND b.pm = e.EMPNO 
AND a.empno = c.empno
AND a.PROGRESS = d.PROGRESS;
SELECT  e.ename dname, b.PROTITLE, a.WORKTITLE text, 
TO_CHAR(a.STARTDATE, 'DD-MM-YYYY') startdate ,TO_CHAR(a.ENDDATE,'DD-MM-YYYY' ) enddate
FROM WORK a, PROJECT b, emp1 c, PROGRESS d, emp1 e
WHERE a.prono = b.prono AND b.pm = e.EMPNO AND a.empno = c.empno AND a.PROGRESS = d.PROGRESS
AND e.ename='김지민';

SELECT * FROM PROJECT p ;
SELECT * FROM WORK;

SELECT workno id ,WORKTITLE text, TO_CHAR(STARTDATE ,'DD-MM-YYYY') start_date,
(ENDDATE - STARTDATE ) duration, 1 oepn
FROM WORK WHERE prono = 86;








--  안드 데이터
SELECT  e.ename , b.PROTITLE, a.WORKTITLE text, 
TO_CHAR(a.STARTDATE, 'DD-MM-YYYY') startdate ,TO_CHAR(a.ENDDATE,'DD-MM-YYYY' ) enddate
FROM WORK a, PROJECT b, emp1 c, PROGRESS d, emp1 e
WHERE a.prono = b.prono AND b.pm = e.EMPNO AND a.empno = c.empno AND a.PROGRESS = d.PROGRESS
AND e.ename='김지민';









