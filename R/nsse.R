#' National Survey of Student Engagement
#'
#' Mock data from the National Survey of Student Engagement
#'
#' **Note:** This dataset was imported from an SPSS .sav file using `haven` and therefore has variable attributes attached.
#'
#' @format A data frame with 2571 rows and 23 variables:
#' \describe{
#'   \item{surveyid}{Unique survey number assigned by NSSE}
#'   \item{askquest}{Asked questions or contributed to course discussions in other ways}
#'   \item{drafts}{Prepared two or more drafts of a paper or assignment before turning it in}
#'   \item{unprepared}{Come to class without completing readings or assignments}
#'   \item{unpreparedr}{Reverse code of the variable unprepared}
#'   \item{attendart}{Attended an art exhibit, play, or other arts performance (dance, music, etc.)}
#'   \item{CLaskhelp}{Asked another student to help you understand course material}
#'   \item{CLexplain}{Explained course material to one or more students}
#'   \item{CLstudy}{Prepared for exams by discussing or working through course material with other students}
#'   \item{CLproject}{Worked with other students on course projects or assignments}
#'   \item{present}{Given a course presentation}
#'   \item{RIintegrate}{Combined ideas from different courses when completing assignments}
#'   \item{RIsocietal}{Connected your learning to societal problems or issues}
#'   \item{RIdiverse}{Included diverse perspectives (political, religious, racial/ethnic, gender, etc.) in course discussions or assignments}
#'   \item{RIownview}{Examined the strengths and weaknesses of your own views on a topic or issue}
#'   \item{RIperspect}{Tried to better understand someone else's views by imagining how an issue looks from his or her perspective}
#'   \item{RInewview}{Learned something that changed the way you understand an issue or concept}
#'   \item{RIconnect}{Connected ideas from your courses to your prior experiences and knowledge}
#'   \item{SFcareer}{Talked about career plans with a faculty member}
#'   \item{SFotherwork}{Worked with a faculty member on activities other than coursework (committees, student groups, etc.)}
#'   \item{SFdiscuss}{Discussed course topics, ideas, or concepts with a faculty member outside of class}
#'   \item{SFperform}{Discussed your academic performance with a faculty member}
#'   \item{memorize}{Coursework emphasized: Memorizing course material}
#'   \item{HOapply}{Coursework emphasized: Applying facts, theories, or methods to practical problems or new situations}
#'   \item{HOanalyze}{Coursework emphasized: Analyzing an idea, experience, or line of reasoning in depth by examining its parts}
#'   \item{HOevaluate}{Coursework emphasized: Evaluating a point of view, decision, or information source}
#'   \item{HOform}{Coursework emphasized: Forming a new idea or understanding from various pieces of information}
#'   \item{ETgoals}{Instructors: Clearly explained course goals and requirements}
#'   \item{ETorganize}{Instructors: Taught course sessions in an organized way}
#'   \item{ETexample}{Instructors: Used examples or illustrations to explain difficult points}
#'   \item{ETdraftfb}{Instructors: Provided feedback on a draft or work in progress}
#'   \item{ETfeedback}{Instructors: Provided prompt and detailed feedback on tests or completed assignments}
#'   \item{QRconclude}{Reached conclusions based on your own analysis of numerical information (numbers, graphs, statistics, etc.)}
#'   \item{QRproblem}{Used numerical information to examine a real-world problem or issue (unemployment, climate change, public health, etc.)}
#'   \item{QRevaluate}{Evaluated what others have concluded from numerical information}
#'   \item{wrshort}{Number of written papers or reports: Up to 5 pages}
#'   \item{wrmed}{Number of written papers or reports: Between 6 and 10 pages}
#'   \item{wrlong}{Number of written papers or reports: 11 pages or more}
#'   \item{wrpages}{Estimated pages of assigned writing, recoded and summed by NSSE from wrshort, wrmed, and wrlong using the midpoints of response ranges and an estimate for unbounded options}
#'   \item{wrshortnum}{Estimated number of assigned papers, reports, etc., up to 5 pages (NSSE recode)}
#'   \item{wrmednum}{Estimated number of assigned papers, reports, etc., between 6 and 10 pages (NSSE recode)}
#'   \item{wrlongnum}{Estimated number of assigned papers, reports, etc., 11 pages or more (NSSE recode)}
#'   \item{DDrace}{Had discussions with people of a race or ethnicity other than your own}
#'   \item{DDeconomic}{Had discussions with people from an economic background other than your own}
#'   \item{DDreligion}{Had discussions with people with religious beliefs other than your own}
#'   \item{DDpolitical}{Had discussions with people with political views other than your own}
#'   \item{LSreading}{Identified key information from reading assignments}
#'   \item{LSnotes}{Reviewed your notes after class}
#'   \item{LSsummary}{Summarized what you learned in class or from course materials}
#'   \item{challenge}{To what extent have your courses challenged you to do your best work?}
#'   \item{intern}{Internship, co-op, field experience, student teaching, or clinical placement}
#'   \item{leader}{Formal leadership role in a student organization or group}
#'   \item{learncom}{Learning community or some other formal program where groups of students take two or more classes together}
#'   \item{abroad}{Study abroad program}
#'   \item{research}{Work with a faculty member on a research project}
#'   \item{capstone}{Culminating senior experience (capstone course, senior project or thesis, comprehensive exam, portfolio, etc.)}
#'   \item{servcourse}{About how many of your courses at this institution have included a community-based project (service-learning)?}
#'   \item{internR}{Flag for internship done or in progress}
#'   \item{leaderR}{Flag for leadership done or in progress}
#'   \item{learncomR}{Flag for learning community done or in progress}
#'   \item{abroadR}{Flag for study abroad done or in progress}
#'   \item{researchR}{Flag for research with faculty done or in progress}
#'   \item{capstoneR}{Flag for capstone done or in progress}
#'   \item{servcourseR}{Flag for service learning done or in progress}
#'   \item{QIstudent}{Quality of interactions with students}
#'   \item{QIadvisor}{Quality of interactions with academic advisors}
#'   \item{QIfaculty}{Quality of interactions with faculty}
#'   \item{QIstaff}{Quality of interactions with student services staff}
#'   \item{QIadmin}{Quality of interactions with other administrative staff and offices}
#'   \item{QIstudentR}{Quality of interactions with students}
#'   \item{QIadvisorR}{Quality of interactions with academic advisors}
#'   \item{QIfacultyR}{Quality of interactions with faculty}
#'   \item{QIstaffR}{Quality of interactions with student services staff}
#'   \item{QIadminR}{Quality of interactions with other administrative staff and offices}
#'   \item{empstudy}{Institutional emphasis: Spending significant amounts of time studying and on academic work}
#'   \item{SEacademic}{Institutional emphasis: Providing support to help students succeed academically}
#'   \item{SElearnsup}{Institutional emphasis: Using learning support services (tutoring services, writing center, etc.)}
#'   \item{SEdiverse}{Institutional emphasis: Encouraging contact among students from different backgrounds (social, racial/ethnic, religious, etc.)}
#'   \item{SEsocial}{Institutional emphasis: Providing opportunities to be involved socially}
#'   \item{SEwellness}{Institutional emphasis: Providing support for your overall well-being (recreation, health care, counseling, etc.)}
#'   \item{SEnonacad}{Institutional emphasis: Helping you manage your non-academic responsibilities (work, family, etc.)}
#'   \item{SEactivities}{Institutional emphasis: Attending campus activities and events (performing arts, athletic events, etc.)}
#'   \item{SEevents}{Institutional emphasis: Attending events that address important social, economic, or political issues}
#'   \item{tmprep}{Hours per week: Preparing for class (studying, reading, writing, doing homework or lab work, analyzing data, rehearsing, and other academic activities)}
#'   \item{tmcocurr}{Hours per week: Participating in co-curricular activities (organizations, campus publications, student government, fraternity or sorority, intercollegiate or intramural sports, etc.)}
#'   \item{tmworkon}{Hours per week: Working for pay ON CAMPUS}
#'   \item{tmworkoff}{Hours per week: Working for pay OFF CAMPUS}
#'   \item{tmservice}{Hours per week: Doing community service or volunteer work}
#'   \item{tmrelax}{Hours per week: Relaxing and socializing (time with friends, video games, TV or videos, keeping up with friends online, etc.)}
#'   \item{tmcare}{Hours per week: Providing care for dependents (children, parents, etc.)}
#'   \item{tmcommute}{Hours per week: Commuting to campus (driving, walking, etc.)}
#'   \item{tmprephrs}{Estimated hours: tmprep recoded by NSSE using the midpoints of response ranges and an estimate for unbounded options}
#'   \item{tmcocurrhrs}{Estimated hours: tmcocurr recoded by NSSE using the midpoints of response ranges and an estimate for unbounded options}
#'   \item{tmworkonhrs}{Estimated hours: tmworkon recoded by NSSE using the midpoints of response ranges and an estimate for unbounded options}
#'   \item{tmworkoffhrs}{Estimated hours: tmworkoff recoded by NSSE using the midpoints of response ranges and an estimate for unbounded options}
#'   \item{tmworkhrs}{Estimated number of hrs working for pay recoded and summed by NSSE from tmworkonhrs and tmworkoffhrs using the response range midpoints and an estimate for unbounded options}
#'   \item{tmservicehrs}{Estimated hours: tmservice recoded by NSSE using the midpoints of response ranges and an estimate for unbounded options}
#'   \item{tmrelaxhrs}{Estimated hours: tmrelax recoded by NSSE using the midpoints of response ranges and an estimate for unbounded options}
#'   \item{tmcarehrs}{Estimated hours: tmcare recoded by NSSE using the midpoints of response ranges and an estimate for unbounded options}
#'   \item{tmcommutehrs}{Estimated hours: tmcommute recoded by NSSE using the midpoints of response ranges and an estimate for unbounded options}
#'   \item{reading}{Of the time you spend preparing for class in a typical 7-day week, about how many hours are on ASSIGNED READING?}
#'   \item{tmreadinghrs}{Estimated hours: reading recoded by NSSE using tmprephrs and reading}
#'   \item{tmreadinghrscol}{Collapsed recode of tmreadinghrs}
#'   \item{pgwrite}{Perceived gains: Writing clearly and effectively}
#'   \item{pgspeak}{Perceived gains: Speaking clearly and effectively}
#'   \item{pgthink}{Perceived gains: Thinking critically and analytically}
#'   \item{pganalyze}{Perceived gains: Analyzing numerical and statistical information}
#'   \item{pgwork}{Perceived gains: Acquiring job- or work-related knowledge and skills}
#'   \item{pgothers}{Perceived gains: Working effectively with others}
#'   \item{pgvalues}{Perceived gains: Developing or clarifying a personal code of values and ethics}
#'   \item{pgdiverse}{Perceived gains: Understanding people of other backgrounds (economic, racial/ethnic, political, religious, nationality, etc.)}
#'   \item{pgprobsolve}{Perceived gains: Solving complex real-world problems}
#'   \item{pgcitizen}{Perceived gains: Being an informed and active citizen}
#'   \item{evalexp}{How would you evaluate your entire educational experience at this institution?}
#'   \item{sameinst}{If you could start over again, would you go to the SAME INSTITUTION you are now attending?}
#'   \item{class}{Student reported: What is your class level/current year of study in university?}
#'   \item{fulltime}{Student reported: Are you a full-time student?}
#'   \item{coursenum}{How many courses are you taking for credit this current academic term?}
#'   \item{onlinenum}{Of these, how many are ENTIRELY ONLINE?}
#'   \item{onlinecrscol}{Collapsed recode of courses taken online}
#'   \item{onlinecrspct}{Percentage of courses taken online}
#'   \item{allonline}{Student taking all courses online}
#'   \item{MAJnum}{How many majors do you plan to complete? (Do not count minors.)}
#'   \item{MAJfirstcode}{First major or expected major}
#'   \item{MAJfirstcol}{Recoded write-in major variable MAJfirst into one of eleven related-major categories}
#'   \item{MAJsecond}{Second major:}
#'   \item{MAJsecondcode}{Second major}
#'   \item{MAJsecondcol}{Recoded write-in major variable MAJsecond into one of eleven related-major categories}
#'   \item{STEM}{Collapsed first major into STEM or non-STEM fields}
#'   \item{grades}{What have most of your grades been up to now at this institution?}
#'   \item{gradescol}{What have most of your grades been up to now at thisinstituion (collapsed recode of grades)}
#'   \item{GPAest}{What have most of your grades been up to now at thisinstitution (recoded into estimated GPA)}
#'   \item{begincol}{Did you begin college at this institution or elsewhere?}
#'   \item{transfer}{Flag for transfer status (roughly defined)}
#'   \item{edaspire}{What is the highest level of education you ever expect to complete?}
#'   \item{parented}{What is the highest level of education completed by either of your parents (or those who raised you)?}
#'   \item{firstgen}{First-Generation Status (neither parent/guardian holds a bachelor's degree)}
#'   \item{firstgen3col}{First-Generation Status, three tier definition (US only)}
#'   \item{genderid}{Student reported: What is your gender identity?}
#'   \item{age}{Age recoded from variable birthyear}
#'   \item{agecat}{Age Category}
#'   \item{internat}{Are you an international student?}
#'   \item{country}{What is your country of citizenship?}
#'   \item{countrycol}{Collapsed country variable into eight region categories}
#'   \item{re_all}{Racial/ethnic background based on re_amind through re_pnr where each student is represented only once)}
#'   \item{greek}{Are you a member of a social fraternity or sorority?}
#'   \item{living}{Which of the following best describes where you are living while attending college?}
#'   \item{oncampus}{Student living on campus (collapsed recode of living)}
#'   \item{athlete}{Are you a student-athlete on a team sponsored by your institution’s athletics department?}
#'   \item{veteran}{Are you a current or former member of the U.S. Armed Forces, Reserves, or National Guard?}
#'   \item{sexorient14}{Which of the following best describes your sexual orientation? (Optional item administered per institution request.)}
#'   \item{IRclass}{Institution-reported: Class level}
#'   \item{IRenrollment}{Institution-reported: Enrollment status}
#'   \item{IRsex}{Institution-reported: Sex}
#'   \item{IRrace}{Institution-reported: Race or ethnicity}
#'   \item{IRftfy}{Institution reported first-time first-year student}
#' }
#' @source


