  CREATE TABLE SKILLS (
        SKILL_ID        NUMBER(10)	        PRIMARY KEY,
        SKILL_NAME  	VARCHAR2(50)	    NOT NULL
 );
 
 CREATE TABLE USERS (
        USER_IDX                NUMBER(10)         PRIMARY KEY,
        USER_ID    	            VARCHAR2(30)       NOT NULL UNIQUE, 
        USER_NAME	            VARCHAR2(30)	   NOT NULL,
        USER_PW	                VARCHAR2(30)	   NOT NULL,
        USER_BIRTHDATE	        VARCHAR2(30)	   NOT NULL,
        USER_GENDER	            VARCHAR2(30)	   NOT NULL,
        USER_TEL	            VARCHAR2(30)       NOT NULL
 );
 
 CREATE TABLE RESUME(
        USER_IDX	    NUMBER(10),
        RESUME_IDX	    NUMBER(10)	        PRIMARY KEY,
        RESUME_TITLE	VARCHAR2(100)	    NOT NULL,       
        COVER_LETTER	VARCHAR2(1000)      NOT NULL,
        RESUME_CDATE	DATE	            DEFAULT SYSDATE,
        RESUME_FDATE	DATE,
        FOREIGN KEY (USER_IDX) REFERENCES USERS(USER_IDX)
 );
 
  CREATE TABLE RESUME_CAREER(
    RESUME_IDX          NUMBER(10),
    CAREER_IDX	        NUMBER(10)	    PRIMARY KEY,
    CAREER_CNAME	    VARCHAR2(50)	NOT NULL,
    CAREER_DESCRIPTION 	VARCHAR2(1000)	NOT NULL,
    CAREER_SDATE	    VARCHAR2(50)	NOT NULL,
    CAREER_EDATE	    DATE,
    FOREIGN KEY (RESUME_IDX) REFERENCES RESUME(RESUME_IDX)
 );
 
 CREATE TABLE RESUME_SKILLS (
        RESUME_SKILL_IDX    NUMBER(10)      PRIMARY KEY,
        RESUME_IDX	        NUMBER(10),
        SKILL_ID  	        NUMBER(10),
        FOREIGN KEY (RESUME_IDX) REFERENCES RESUME(RESUME_IDX),
        FOREIGN KEY (SKILL_ID) REFERENCES SKILLS(SKILL_ID)
 );
 
   CREATE TABLE REGION_CITY(
    CITY_ID	     NUMBER(10)	    PRIMARY KEY,
    CITY_NAME	 VARCHAR2(30)
 );
 
  CREATE TABLE REGION_DISTRICT(
    CITY_ID	            NUMBER(10),
    DISTRICT_ID	        NUMBER(10)	    PRIMARY KEY,
    DISTRICT_NAME	    VARCHAR2(30)	NOT NULL,
    FOREIGN KEY (CITY_ID) REFERENCES REGION_CITY (CITY_ID)
 );
 
  CREATE TABLE COMPANIES(
    COMPANY_IDX     NUMBER(10)          PRIMARY KEY,
    COMPANY_ID	    VARCHAR2(30)	    NOT NULL UNIQUE,
    COMPANY_PW	    VARCHAR2(30)	    NOT NULL,
    COMPANY_NAME	VARCHAR2(30)	    NOT NULL,
    COMPANY_BRNUM	VARCHAR2(30)	    NOT NULL UNIQUE,
    COMPANY_TEL	    VARCHAR2(30)	    NOT NULL,
    REP_NAME	    VARCHAR2(30)	    NOT NULL,
    COMPANY_EMAIL	VARCHAR2(300)	    NOT NULL,
    COMPANY_POINT	NUMBER(10, 2)	    DEFAULT 0
 );
 
  CREATE TABLE POST (
    POST_IDX	        NUMBER(10)	    PRIMARY KEY,
    COMPANY_IDX	        NUMBER(10),
    POST_TITLE	        VARCHAR2(50)	NOT NULL,
    POST_CONTENT	    VARCHAR2(1000)	NOT NULL,
    POST_HIT	        NUMBER(10)	    DEFAULT 0,
    POST_CDATE	        DATE	        DEFAULT SYSDATE,
    POST_FDATE	        DATE,
    FOREIGN KEY (COMPANY_IDX)    REFERENCES COMPANIES(COMPANY_IDX)
 );
 
  CREATE TABLE BENEFITS (
    BENEFIT_ID	    NUMBER(10)	    PRIMARY KEY,
    BENEFIT_NAME	VARCHAR2(30)	
 );
 
  CREATE TABLE POST_BENEFITS(
    POST_BENEFIT_IDX	NUMBER(10)	PRIMARY KEY,
    BENEFIT_ID	        NUMBER(10),
    POST_IDX	        NUMBER(10),
    FOREIGN KEY (BENEFIT_ID)    REFERENCES BENEFITS(BENEFIT_ID),
    FOREIGN KEY (POST_IDX)       REFERENCES POST(POST_IDX)
 );
 
   CREATE TABLE EMPLOYMENT(
    EMP_ID	    NUMBER(10)	        PRIMARY KEY,
    EMP_NAME	VARCHAR2(30)	
 );
 
   CREATE TABLE POST_EMPLOYMENT(
    POST_EMP_IDX	NUMBER(10)	PRIMARY KEY,
    POST_IDX	    NUMBER(10),
    EMP_ID	        NUMBER(10),
    FOREIGN KEY (POST_IDX)   REFERENCES POST(POST_IDX),
    FOREIGN KEY (EMP_ID)    REFERENCES EMPLOYMENT(EMP_ID)
 );
 
    CREATE TABLE COMPANY_BOOKMARK(
    COMPANY_BOOKMARK_IDX	NUMBER(10)	PRIMARY KEY,
    USER_IDX	            NUMBER(10),
    COMPANY_IDX	            NUMBER(10),
    FOREIGN KEY (USER_IDX)      REFERENCES USERS(USER_IDX),
    FOREIGN KEY (COMPANY_IDX)   REFERENCES COMPANIES(COMPANY_IDX)
 );
 
     CREATE TABLE RESUME_BOOKMARK(
    RESUME_BOOKMARK_IDX	NUMBER(10)	PRIMARY KEY,
    RESUME_IDX	        NUMBER(10),
    COMPANY_IDX	        NUMBER(10),
    FOREIGN KEY (RESUME_IDX)      REFERENCES USERS(RESUME_IDX),
    FOREIGN KEY (COMPANY_IDX)     REFERENCES COMPANIES(COMPANY_IDX)
 );
 
   CREATE TABLE APPLICATION(
    APPLI_IDX	    NUMBER(10)	PRIMARY KEY,
    USER_IDX	    NUMBER(10),
    POST_IDX	    NUMBER(10),
    APPLI_DATE	    DATE,	
    APPLI_STATUS	VARCHAR2(30)	DEFAULT '면접대기',
    FOREIGN KEY (USER_IDX)          REFERENCES USERS(USER_IDX),
    FOREIGN KEY (POST_IDX)          REFERENCES POST(POST_IDX)
 );
 
    CREATE TABLE REVIEWS(
        REVIEW_IDX NUMBER(10)       PRIMARY KEY,
        USER_IDX	NUMBER(10),
        COMPANY_IDX	NUMBER(10),
        REVIEW_SCORE	NUMBER(1)	NOT NULL
        FOREIGN KEY (USER_IDX)          REFERENCES USERS(USER_IDX),
        FOREIGN KEY (POST_IDX)          REFERENCES POST(POST_IDX)

    )
 
 
 
 
 