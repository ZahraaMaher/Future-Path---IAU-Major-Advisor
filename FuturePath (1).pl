/*Done by students:
   - Zahra Maher Alnamer         2160001732
   - Zahra Majed Alzawad         2170006162
   - Reem Fadel Aljishi          2170000468
   - Fatima Abbas Alramadan      2170005648
   - Fatima Abdulmohsen Almomen  2170004947
   - Wala Wadeea Alfaraj         2170002876

   Group 1
   
*/



go:- 
    write('      *** Welcom to IAU Major Advisor ***'),nl,nl,
    write('=================================================='),nl,nl,
    write('Hello dear ❤'),nl,nl,
    write('This is IAU Major advisor, we will try to help you choose the best major suitable for you 
           in our university'),nl,nl,
    write('The major will be shown for you based on the market need in saudi arabia and based on
           your abilities that measured using the High school GPA score, your aptitude tests (Qudorat)
           score, your scholastic achievement admission test (Tahsili) score, and your hobbies. '),nl,nl,
	nl,write('Are you ready to provide your academic details and start the test? Please enter 1 for
              true and 0 for false and if you enter any different result this will break your exam'),nl,
	read(S1),nl,S1==1,askDetails();write("thanks for visiting us and we would like to talk with you again ❤.").

/*Ask about the score and calculate the %*/
askDetails():-
	write('=================== Academic Details ==================='),nl,nl,
    write('What is your name?'),nl,
	read(_),nl,
	write('Write your High School GPA Score: '),nl,
	read(S1),nl,
	write('Write your aptitude tests (Qudorat) Score: '),nl,
	read(S2),nl,
	write('Write your scholastic achievement admission test (Tahsili) Score: '),nl,
	read(S3),nl,
    Y is (S1*0.3)+(S2*0.3)+(S3*0.4),
    write('Your overall score is= '),write(Y),nl,nl,
    Y>=50->  
	score(Y);write('you have entered a a wrong score values! please re write your acrual scores!'),nl,nl,askDetails().


/*route the sore calculated to the right question*/
score(X):-
	X>=92->  calc92(T9,T8,T7,T6,T5,T4,T3,T2,T1,T)->writeln('=================================================='),
    nl,nl->writeln('If you did not find any valid majors means nothing fits you in our university ✖╭╮✖'),
    nl->writeln('The best suitable major for you is :')->writeln(T9)->writeln(T8)->writeln(T7)->writeln(T6)->
    writeln(T5)->writeln(T4)->writeln(T3)->writeln(T2)->writeln(T1)->writeln(T)->ask();
	X>=85->  calc85(T8,T7,T6,T5,T4,T3,T2,T1,T)->writeln('=================================================='),
    nl,nl->writeln('If you did not find any valid majors means nothing fits you in our university ✖╭╮✖'),
    nl->writeln('The best suitable major for you is :')->writeln(T8)->writeln(T7)->writeln(T6)->writeln(T5)->
    writeln(T4)->writeln(T3)->writeln(T2)->writeln(T1)->writeln(T)->ask();
	X>=84->  calc84(T1,T4,T3,T2,T)->writeln('=================================================='),
    nl,nl->writeln('If you did not find any valid majors means nothing fits you in our university ✖╭╮✖'),nl
    ->writeln('The best suitable major for you is :')->writeln(T1)->writeln(T4)->writeln(T3)->writeln(T2)->writeln(T)->ask();
	X>=79->  calc79(T1,T)->writeln('=================================================='),
    nl,nl->writeln('If you did not find any valid majors means nothing fits you in our university ✖╭╮✖'),
    nl->writeln('The best suitable major for you is :')->writeln(T1)->writeln(T)->ask();
	X>=64->  calc64(T),writeln('=================================================='),
    nl,nl->writeln('If you did not find any valid majors means nothing fits you in our university ✖╭╮✖'),
    nl->print('The best suitable major for you is :')->writeln(T)->ask();
	X<64 ->  writeln('=================================================='),
    nl,nl->write('There is no suitable major in the system for you in our university ✖╭╮✖,
                  try to have higher overall scores to study in our university ❤')->ask().



/*restart the loop again*/
ask():-
	nl,nl, write('=================================================='),nl,nl,
    write('We hope that we have helped you, would you like to repeat the test or exit the system? 
           Please enter 1 for yes or 0 to exit'),nl,
	read(S1),nl,S1==1,askDetails();
    write("We hope that our suggestion helped you in choosing your major, thanks for asking
           us and we would like to talk with you again ❤"),nl,nl,
    write('==================================================').


/*Questions of % 92*/
calc92(T9,T8,T7,T6,T5,T4,T3,T2,T1,T):-
    calc85(T8,T1,T7,T6,T5,T4,T3,T2,T),
	write("Do you have the ability to work for long hours and often under pressure? 
           Please enter 1 for true and 0 for false and if you enter any different result this will break your exam"),nl,
    read(L),nl,
	write("Can you tolerate anatomy sessions starting from animals to human beings? 
           Please enter 1 for true and 0 for false and if you enter any different result this will break your exam"),nl,
    read(L1),nl,
	write("Do you have analytical ability? Please enter 1 for true and 0 for false and if you enter any different
           result this will break your exam"),nl,read(L2),nl,medQuestions(L,L1,L2,T9).

/*Questions of % 85*/
calc85(T8,T1,T7,T6,T5,T4,T3,T2,T):-
    calc84(T1,T4,T3,T2,T),
	write("Are you usually patient and good in working with a team? 
           Please enter 1 for true and 0 for false and if you enter any different result this will break your exam"),nl,
    read(L13),nl,
	write("Do you think creatively, critically or outside the box? Please enter 1 for true and 0 for false
           and if you enter any different result this will break your exam"),nl,
    read(L14),nl,
	write("Do you have problem solving and high mathematical skills? Please enter 1 for true and 0 for false
           and if you enter any different result this will break your exam"),nl,
    read(L15),nl,csQuestions(L13,L14,L15,T5),nl,
	write("Do you have problem-analysis skills with a logical reflection? Please enter 1 for true and 0 for false
           and if you enter any different result this will break your exam"),nl,
    read(L10),nl,
	write("Can you deal with different personalities? Please enter 1 for true and 0 for false 
           and if you enter any different result this will break your exam"),nl,
    read(L11),nl,
	write("Are you overly observant and fast performing? Please enter 1 for true and 0 for false and if you
           enter any different result this will break your exam"),nl,
    read(L12),nl,aiQuestions(L10,L11,L12,T7),nl,
	write("Do you have a patience and communication skills to work with the patient? 
           Please enter 1 for true and 0 for false and if you enter any different result this will break your exam"),nl,
    read(L16),nl,
	write("Do you have a good memory to deal with variety of diseases? Please enter 1 for true and 0 for false
           and if you enter any different result this will break your exam"),nl,read(L17),nl,
	write("Do you have the ability to serves as a front-line educator? Please enter 1 for true and 0 for false
           and if you enter any different result this will break your exam"),nl,read(L18),nl,
    cpQuestions(L18,L17,L16,T8),nl,
	write("Do you have the ability of working under stress? Please enter 1 for true and 0 for false
           and if you enter any different result this will break your exam"),nl,read(L19),nl,
	write("Are you interested to learn about the security and hacking? Please enter 1 for true
           and 0 for false and if you enter any different result this will break your exam"),nl,
    read(L20),nl,
	write("Do you have the problem-solving skills? Please enter 1 for true and 0 for false and if you enter
           any different result this will break your exam"),nl,
    read(L21),nl,cyQuestions(L19,L20,L21,T6).


/*Questions of % 84*/
calc84(T1,T4,T3,T2,T):-
	calc79(T1,T)->
	write("Do you like inventing and coming up with new solutions to existing or non-existing problems?
           Please enter 1 for true and 0 for false and if you enter any different result this will break
           your exam"),nl,
    read(L),nl,
	write("Are you willing to work with customers and new people every day? Please enter 1 for true and 
           0 for false and if you enter any different result this will break your exam"),nl,
    read(L1),nl,
	write("Do you have an excellent sense of design? Please enter 1 for true and 0 for false and if you
           enter any different result this will break your exam"),nl,
    read(L2),nl,isdQuestions(L,L1,L2,T4),nl,
	write("Do you mentally rearrange the furniture every time you enter a new place? Please enter 1
           for true and 0 for false and if you enter any different result this will break your exam"),nl,
    read(L4),nl,
	write("Are you interested in the many decor styles? Please enter 1 for true and 0 for false and if 
           you enter any different result this will break your exam"),nl,
    read(L5),nl,
	write("Do you like working with forms, designs and patterns? Please enter 1 for true and 0 for false
           and if you enter any different result this will break your exam"),nl,
    read(L6),nl,indQuestions(L4,L5,L6,T3),nl,
	write("Are you open to criticism and dealing with clients? Please enter 1 for true and 0 for false and
           if you enter any different result this will break your exam"),nl,
    read(L7),nl,
	write("Do you have a creative talent and an artistic way of thinking? Please enter 1 for true and 0 for
           false and if you enter any different result this will break your exam"),nl,
    read(L8),nl,
	write("Are you open minded and willing to work outside from you comfort zone? Please enter 1 for true and
           0 for false and if you enter any different result this will break your exam"),nl,
    read(L9),nl,
	gdQuestions(L7,L8,L9,T2).


/*Questions of % 79*/
calc79(T1,T):-
	calc64(T)->nl-> write('Are you able to work under pressure efficiently while maintaining a positive attitude?
                           Please enter 1 for true and 0 for false and if you enter any different result this will
                           break your exam'),nl,read(L3),nl,
    write('Do you respect people regardless of age or gender or marital status? Please enter 1 for true and 0 for false
           and if you enter any different result this will break your exam'),nl,
    read(L4),nl,write('Do you have a great memory or and are you interested in science? Please enter 1 for
                       true and 0 for false and if you enter any different result this will break your exam'),nl,
    read(L5),nl,nQuestions(L3,L4,L5,T1).


/*Questions of % 64*/
calc64(T):-
    write('==================== Start The Test ===================='),nl,nl,
    write('Are you assertive and confident in making decisions? Please enter 1 for true and 0 for false
           and if you enter any different result this will break your exam'),nl,
    read(L),nl,
    write("Can you deal with different personalities? Please enter 1 for true and 0 for false and if you enter
           any different result this will break your exam"),nl,
    read(L1),nl,
    write("Do you take initiative in company growth? Please enter 1 for true and 0 for false and if you enter any different
           result this will break your exam"),nl,read(L2),nl,
    bisQuestions(L,L1,L2,T).


/*Cyber Security Logic*/
cyQuestions(L,L1,L2,T):-
	(   L\==1->  L1\==1->  L2\==1),result((0,L,L1,L2,0,0),T);
	(   L\==1->  L1\==1->  L2==1),result((0,L,L1,L2,0,0),T);
	(   L\==1->  L1==1->  L2\==1),result((0,L,L1,L2,0,0),T);
	(   L\==1->  L1==1->  L2==1),write("Are you passionate about computer forensics? Please enter 1
                                        for true and 0 for false and if you enter any different result this will break your exam"),nl,
    read(SW1),nl,
    write("Do you pay attention to details? Please enter 1 for true and 0 for false and if you enter any different result this will
           break your exam"),nl,
    read(SW2),nl,result((0,L,L1,L2,SW1,SW2),T);
	(   L==1->  L1\==1->  L2\==1),result((0,L,L1,L2,0,0),T);
	(   L==1->  L1\==1->  L2==1),write("Are you passionate about computer forensics? Please enter 1 for true and 0 for false and if 
                                        you enter any different result this will break your exam"),nl,
    read(SW1),nl,write("Do you pay attention to details? Please enter 1 for true and 0 for false and if you enter any different result
                        this will break your exam"),nl,
    read(SW2),nl,
    result((0,L,L1,L2,SW1,SW2),T);
	(   L==1->  L1==1->  L2\==1),write("Are you passionate about computer forensics? Please enter 1 for true and 0 for false and if you
                                        enter any different result this will break your exam"),nl,
    read(SW1),nl,write("Do you pay attention to details? Please enter 1 for true and 0 for false and if you enter any different result
                        this will break your exam"),nl,
    read(SW2),nl,result((0,L,L1,L2,SW1,SW2),T);
	(   L==1->  L1==1->  L2==1),write("Are you passionate about computer forensics? Please enter 1 for true and 0 for false and if you
                                       enter any different result this will break your exam"),nl,
    read(SW1),nl,write("Do you pay attention to details? Please enter 1 for true and 0 for false and if you enter any different result
                        this will break your exam"),nl,
    read(SW2),nl,
    result((0,L,L1,L2,SW1,SW2),T).


/*Clinical Pharmacy Logic*/
cpQuestions(L,L1,L2,T):-
	(   L\==1->  L1\==1->  L2\==1),result((1,L,L1,L2,0,0),T);
	(   L\==1->  L1\==1->  L2==1),result((1,L,L1,L2,0,0),T);
	(   L\==1->  L1==1->  L2\==1),result((1,L,L1,L2,0,0),T);
	(   L\==1->  L1==1->  L2==1),write("Are interested to do a round with the doctors to the patient? Please enter 1
                                        for true and 0 for false and if you enter any different result this will break your exam"),nl,
    read(SQ1),nl,
    write("Are you ready to update your knowledge frequently in medicines and diseases? Please enter 1 for true and 0 for
                        false and if you enter any different result this will break your exam"),nl,
    read(SQ2),nl,
    result((1,L,L1,L2,SQ1,SQ2),T);
	(   L==1->  L1\==1->  L2\==1),result((1,L,L1,L2,0,0),T);
	(   L==1->  L1\==1->  L2==1),write("Are interested to do a round with the doctors to the patient? Please enter 1 for true and 0 for
                                        false and if you enter any different result this will break your exam"),nl,
    read(SQ1),nl,
    write("Are you ready to update your knowledge frequently in medicines and diseases? Please enter 1 for true and 0 for false and if
           you enter any different result this will break your exam"),nl,
    read(SQ2),nl,result((1,L,L1,L2,SQ1,SQ2),T);
	(   L==1->  L1==1->  L2\==1),write("Are interested to do a round with the doctors to the patient? Please enter 1 for true and 0 for
                                        false and if you enter any different result this will break your exam"),nl,
    read(SQ1),nl,write("Are you ready to update your knowledge frequently in medicines and diseases? Please enter 1 for true and 0 for
                        false and if you enter any different result this will break your exam"),nl,
    read(SQ2),nl,result((1,L,L1,L2,SQ1,SQ2),T);
	(   L==1->  L1==1->  L2==1),write("Are interested to do a round with the doctors to the patient? Please enter 1 for true and 0
                                       for false and if you enter any different result this will break your exam"),nl,
    read(SQ1),nl,write("Are you ready to update your knowledge frequently in medicines and diseases? Please enter 1 for true and 0
                        for false and if you enter any different result this will break your exam"),nl,
    read(SQ2),nl,result((1,L,L1,L2,SQ1,SQ2),T).


/*Ai Questions*/
aiQuestions(L,L1,L2,T):-
	(   L\==1->L1\==1->L2\==1),result((2,L,L1,L2,0,0),T);
	(   L\==1->L1\==1->L2==1),result((2,L,L1,L2,0,0),T);
	(   L\==1->L1==1->L2\==1),result((2,L,L1,L2,0,0),T);
	(   L\==1->L1==1->L2==1),write("Do you like to develop yourself and abreast of all technological developments around you? 
                                    Please enter 1 for true and 0 for false and if you enter any different result this will 
                                    break your exam"),nl,
    read(SP1),nl,write("Do you have an interest in artificial intelligence and machine learning? Please enter 1 for true and
                        0 for false and if you enter any different result this will break your exam"),nl,
    read(SP2),nl,result((2,L,L1,L2,SP1,SP2),T);
    (   L==1->L1\==1->L2\==1),result((2,L,L1,L2,0,0),T);
	(   L==1->L1\==1->L2==1),write("Do you like to develop yourself and abreast of all technological developments around you? 
                                    Please enter 1 for true and 0 for false and if you enter any different result this will break
                                    your exam"),nl,
    read(SP1),nl,write("Do you have an interest in artificial intelligence and machine learning? Please enter 1 for true and 0 for
                        false and if you enter any different result this will break your exam"),nl,
    read(SP2),nl,
    result((2,L,L1,L2,SP1,SP2),T);
	(   L==1->L1==1->L2\==1),write("Do you like to develop yourself and abreast of all technological developments around you? Please
                                    enter 1 for true and 0 for false and if you enter any different result this will break your exam"),nl,
    read(SP1),nl,
    write("Do you have an interest in artificial intelligence and machine learning? Please enter 1 for true and 0 for false and if you 
           enter any different result this will break your exam"),nl,
    read(SP2),nl,result((2,L,L1,L2,SP1,SP2),T);
	(   L==1->L1==1->L2==1),write("Do you like to develop yourself and abreast of all technological developments around you? Please 
                                   enter 1 for true and 0 for false and if you enter any different result this will break your exam"),nl,
    read(SP1),nl,write("Do you have an interest in artificial intelligence and machine learning? Please enter 1 for true and 0 for false
                        and if you enter any different result this will break your exam"),nl,
    read(SP2),nl,result((2,L,L1,L2,SP1,SP2),T).


/*Computer Science Logic*/
csQuestions(L,L1,L2,T):-
	(   L\==1->L1\==1->L2\==1),result((3,L,L1,L2,0,0),T);
	(   L\==1->L1\==1->L2==1),result((3,L,L1,L2,0,0),T);
	(   L\==1->L1==1->L2\==1),result((3,L,L1,L2,0,0),T);
	(   L\==1->L1==1->L2==1),write("Do you have a good evaluation sense and analytical skills? Please enter 1 for true and 0 for 
                                    false and if you enter any different result this will break your exam"),nl,
    read(SO1),nl,write("Are you interested in programming and solving technical problems? Please enter 1 for true and 0 for false
                        and if you enter any different result this will break your exam"),nl,
    read(SO2),nl,result((3,L,L1,L2,SO1,SO2),T);
	(   L==1->L1\==1->L2\==1),result((3,L,L1,L2,0,0),T);
	(   L==1->L1\==1->L2==1),write("Do you have a good evaluation sense and analytical skills? Please enter 1 for true and 0 for
                                    false and if you enter any different result this will break your exam"),nl,
    read(SO1),nl,write("Are you interested in programming and solving technical problems? Please enter 1 for true and 0 for false
                        and if you enter any different result this will break your exam"),nl,
    read(SO2),nl,result((3,L,L1,L2,SO1,SO2),T);
	(   L==1->L1==1->L2\==1),write("Do you have a good evaluation sense and analytical skills? Please enter 1 for true and 0 for
                                    false and if you enter any different result this will break your exam"),nl,
    read(SO1),nl,write("Are you interested in programming and solving technical problems? Please enter 1 for true and 0 for false
                        and if you enter any different result this will break your exam"),nl,
    read(SO2),nl,result((3,L,L1,L2,SO1,SO2),T);
	(   L==1->L1==1->L2==1),write("Do you have a good evaluation sense and analytical skills? Please enter 1 for true and 0 for
                                   false and if you enter any different result this will break your exam"),nl,
    read(SO1),nl,write("Are you interested in programming and solving technical problems? Please enter 1 for true and 0 for false
                        and if you enter any different result this will break your exam"),nl,
    read(SO2),nl,result((3,L,L1,L2,SO1,SO2),T).


/*Medicin Design Logic*/
medQuestions(L,L1,L2,T):-
	(   L\==1->L1\==1->L2\==1),result((4,L,L1,L2,0,0),T);
	(   L\==1->L1\==1->L2==1),result((4,L,L1,L2,0,0),T);
	(   L\==1->L1==1->L2\==1),result((4,L,L1,L2,0,0),T);
	(   L\==1->L1==1->L2==1),write("Do you have the ability to promote health education? Please enter 1 for true and 0 for false
                                    and if you enter any different result this will break your exam"),nl,
    read(SN1),nl,write("Do you have good practical skills? Please enter 1 for true and 0 for false and if you enter any different
                        result this will break your exam"),nl,
    read(SN2),nl,result((4,L,L1,L2,SN1,SN2),T);
	(   L==1->L1\==1->L2\==1),result((4,L,L1,L2,0,0),T);
	(   L==1->L1\==1->L2==1),write("Do you have the ability to promote health education? Please enter 1 for true and 0 for false
                                    and if you enter any different result this will break your exam"),nl,
    read(SN1),nl,write("Do you have good practical skills? Please enter 1 for true and 0 for false and if you enter any different
                        result this will break your exam"),nl,
    read(SN2),nl,result((4,L,L1,L2,SN1,SN2),T);
	(   L==1->L1==1->L2\==1),write("Do you have the ability to promote health education? Please enter 1 for true and 0 for false 
                                    and if you enter any different result this will break your exam"),nl,
    read(SN1),nl,write("Do you have good practical skills? Please enter 1 for true and 0 for false and if you enter any different
                        result this will break your exam"),nl,read(SN2),nl,
    result((4,L,L1,L2,SN1,SN2),T);
	(   L==1->L1==1->L2==1),write("Do you have the ability to promote health education? Please enter 1 for true and 0 for false
                                   and if you enter any different result this will break your exam"),nl,
    read(SN1),nl,write("Do you have good practical skills? Please enter 1 for true and 0 for false and if you enter any different
                        result this will break your exam"),nl,
    read(SN2),nl,result((4,L,L1,L2,SN1,SN2),T).

/*Industrial Design Logic*/
isdQuestions(L,L1,L2,T):-
	(   L\==1->  L1\==1->L2\==1),result((5,L,L1,L2,0,0),T);
	(   L\==1->L1\==1->L2==1),result((5,L,L1,L2,0,0),T);
	(   L\==1->L1==1->L2\==1),result((5,L,L1,L2,0,0),T);
	(   L\==1->L1==1->L2==1),write("Do you like to experiment with better and faster ways of doing things? Please enter 1
                                    for true and 0 for false and if you enter any different result this will break your exam"),nl,
    read(SM1),nl,write("Are you patient and open to criticism? Please enter 1 for true and 0 for false and if you enter any different
                        result this will break your exam"),
    read(SM2),
    result((5,L,L1,L2,SM1,SM2),T);
	(   L==1->L1\==1->L2\==1),result((5,L,L1,L2,0,0),T);
	(   L==1->L1\==1->L2==1),write("Do you like to experiment with better and faster ways of doing things? Please enter 1 
                                    for true and 0 for false and if you enter any different result this will break your exam"),nl,
    read(SM1),nl,write("Are you patient and open to criticism? Please enter 1 for true and 0 for false and if you enter any different
                        result this will break your exam"),
    read(SM2),result((5,L,L1,L2,SM1,SM2),T);
	(   L==1->L1==1->L2\==1),write("Do you like to experiment with better and faster ways of doing things? Please enter 1 for true and
                                    0 for false and if you enter any different result this will break your exam"),nl,
    read(SM1),nl,write("Are you patient and open to criticism? Please enter 1 for true and 0 for false and if you enter any different
                        result this will break your exam"),read(SM2),
    result((5,L,L1,L2,SM1,SM2),T);
	(   L==1->L1==1->L2==1),write("Do you like to experiment with better and faster ways of doing things? Please enter 1 for true 
                                   and 0 for false and if you enter any different result this will break your exam"),nl,
    read(SM1),nl,write("Are you patient and open to criticism? Please enter 1 for true and 0 for false and if you enter any 
                        different result this will break your exam"),nl,
    read(SM2),nl,result((5,L,L1,L2,SM1,SM2),T).

/*Interior Design*/
indQuestions(L,L1,L2,T):-
	(   L\==1->  L1\==1->  L2\==1),result((6,L,L1,L2,0,0),T);
	(   L\==1->  L1\==1->  L2==1),result((6,L,L1,L2,0,0),T);
	(   L\==1->  L1==1->  L2\==1),result((6,L,L1,L2,0,0),T);
	(   L\==1->  L1==1->  L2==1),write("Are you interested in design techniques, tools, and principles involved in production
                                        of precision technical plans, blueprints, drawings, and models? Please enter 1 for true
                                        and 0 for false and if you enter any different result this will break your exam"),nl,
    read(SK1),nl,write("Are you confident in your creativity? Do you like coming up with new ideas? Please enter 1 for true and 0
                        for false and if you enter any different result this will break your exam"),nl,
    read(SK2),result((6,L,L1,L2,SK1,SK2),T);
	(   L==1->  L1\==1->  L2\==1),result((6,L,L1,L2,0,0),T);
	(   L==1->  L1\==1->  L2==1),write("Are you interested in design techniques, tools, and principles involved in production
                                        of precision technical plans, blueprints, drawings, and models? Please enter 1 for true
                                        and 0 for false and if you enter any different result this will break your exam"),nl,
    read(SK1),nl,write("Are you confident in your creativity? Do you like coming up with new ideas? Please enter 1 for true and 
                        0 for false and if you enter any different result this will break your exam"),nl,
    read(SK2),result((6,L,L1,L2,SK1,SK2),T);
	(   L==1->  L1==1->  L2\==1),write("Are you interested in design techniques, tools, and principles involved in production of
                                        precision technical plans, blueprints, drawings, and models? Please enter 1 for true and
                                        0 for false and if you enter any different result this will break your exam"),nl,
    read(SK1),nl,write("Are you confident in your creativity? Do you like coming up with new ideas? Please enter 1 for true and
                        0 for false and if you enter any different result this will break your exam"),nl,
    read(SK2),result((6,L,L1,L2,SK1,SK2),T);
	(   L==1->  L1==1->  L2==1),write("Are you interested in design techniques, tools, and principles involved in production of
                                       precision technical plans, blueprints, drawings, and models? Please enter 1 for true and
                                       0 for false and if you enter any different result this will break your exam"),nl,
    read(SK1),nl,write("Are you confident in your creativity? Do you like coming up with new ideas? Please enter 1 for true and
                        0 for false and if you enter any different result this will break your exam"),nl,
    read(SK2),result((6,L,L1,L2,SK1,SK2),T).


/*Nursing Logic*/
nQuestions(L,L1,L2,T):-
	(   L\==1->  L1=\=1,L2\==1),result((7,L,L1,L2,0,0),T);
	(   L\==1->  L1\==1,L2==1),result((7,L,L1,L2,0,0),T);
	(   L\==1->  L1==1,L2\==1),result((7,L,L1,L2,0,0),T);
	(   L\==1->  L1==1,L2==1),write("Are you patient, active, and do you love to work with children? Please enter
                                     1 for true and 0 for false and if you enter any different result this will
                                     break your exam"),nl,
    read(ST1),nl,write("Are you interested in working with patients, and do you have a strong sense of responsibility
                        and sound judgment? Please enter 1 for true and 0 for false and if you enter any different 
                        result this will break your exam"),nl,
    read(ST2),result((7,L,L1,L2,ST1,ST2),T);
	(   L==1->  L1\==1,L2\==1),result((7,L,L1,L2,0,0),T);
	(   L==1->  L1\==1,L2==1),write("Are you patient, active, and do you love to work with children? Please enter 1
                                     for true and 0 for false and if you enter any different result this will break your exam"),nl,
    read(ST1),nl,write("Are you interested in working with patients, and do you have a strong sense of responsibility and sound
                        judgment? Please enter 1 for true and 0 for false and if you enter any different result this will break
                        your exam"),nl,
    read(ST2),result((7,L,L1,L2,ST1,ST2),T);
	(   L==1->  L1==1,L2\==1),write("Are you patient, active, and do you love to work with children? Please enter 1 for true and 
                                     0 for false and if you enter any different result this will break your exam"),nl,
    read(ST1),nl,write("Are you interested in working with patients, and do you have a strong sense of responsibility and sound 
                        judgment? Please enter 1 for true and 0 for false and if you enter any different result this will break
                        your exam"),read(ST2),nl,result((7,L,L1,L2,ST1,ST2),T);
	(   L==1->  L1==1,L2==1),write("Are you patient, active, and do you love to work with children? Please enter 1 for true and 0
                                    for false and if you enter any different result this will break your exam"),nl,
    read(ST1),nl,write("Are you interested in working with patients, and do you have a strong sense of responsibility
                        and sound judgment? Please enter 1 for true and 0 for false and if you enter any different result
                        this will break your exam"),
    read(ST2),nl,result((7,L,L1,L2,ST1,ST2),T).


/*Graphic Design Logic*/
gdQuestions(L,L1,L2,T):-
	(   L\==1->  L1=\=1->  L2\==1),result((8,L,L1,L2,0,0),T);
	(   L\==1->  L1\==1->  L2==1),result((8,L,L1,L2,0,0),T);
	(   L\==1->  L1==1->  L2\==1),result((8,L,L1,L2,0,0),T);
	(   L\==1->  L1==1->  L2==1),write("Do you have strong opinions about what you like and don�t like in a particular field?
                                        Please enter 1 for true and 0 for false and if you enter any different result this will
                                        break your exam"),nl,
    read(SL1),nl,write("Are you interested in photography and film making? Please enter 1 for true and 0 for false and if you
                        enter any different result this will break your exam"),
    read(SL2),nl,
    result((8,L,L1,L2,SL1,SL2),T);
	(   L==1->  L1\==1->  L2\==1),result((8,L,L1,L2,0,0),T);
	(   L==1->  L1\==1->  L2==1),write("Do you have strong opinions about what you like and don�t like in a particular field?
                                        Please enter 1 for true and 0 for false and if you enter any different result this will
                                        break your exam"),nl,
    read(SL1),nl,write("Are you interested in photography and film making? Please enter 1 for true and 0 for false and if you
                        enter any different result this will break your exam"),nl,
    read(SL2),nl,result((8,L,L1,L2,SL1,SL2),T);
	(   L==1->  L1==1->  L2\==1),write("Do you have strong opinions about what you like and don�t like in a particular field?
                                        Please enter 1 for true and 0 for false and if you enter any different result this will
                                        break your exam"),nl,
    read(SL1),nl,write("Are you interested in photography and film making? Please enter 1 for true and 0 for false and if you
                        enter any different result this will break your exam"),nl,
    read(SL2),result((8,L,L1,L2,SL1,SL2),T);
	(   L==1-> L1==1->  L2==1),write("Do you have strong opinions about what you like and don�t like in a particular field? 
                                      Please enter 1 for true and 0 for false and if you enter any different result this
                                      will break your exam"),nl,
    read(SL1),nl,write("Are you interested in photography and film making? Please enter 1 for true and 0 for false and if
                        you enter any different result this will break your exam"),nl,
    read(SL2),result((8,L,L1,L2,SL1,SL2),T).


/*Business Admin Logic*/
bisQuestions(L,L1,L2,T):-
    (   L\==1->L1\==1->L2\==1),result((9,L,L1,L2,0,0),T);
	(   L\==1->L1\==1->L2==1), result((9,L,L1,L2,0,0),T);
	(   L\==1->L1==1->L2\==1),  result((9,L,L1,L2,0,0),T);
	(   L\==1->L1==1->L2==1), write("Are you good in analyzing data and numbers? Please enter 1 for true and 0 for false and if you
                                     enter any different result this will break your exam"),nl,
    read(S1),nl,write("Do you consider yourself a well-organized person? Please enter 1 for true and 0 for false and if you enter 
                       any different result this will break your exam"),nl,
    
    read(S2),nl,result((9,L,L1,L2,S1,S2),T);
	(   L==1->L1\==1->L2\==1), result((9,L,L1,L2,0,0),T);
	(   L==1->L1\==1->L2==1),write("Are you good in analyzing data and numbers? Please enter 1 for true and 0 for false and if you
                                    enter any different result this will break your exam"),nl,
    read(S1),nl,write("Do you consider yourself a well-organized person? Please enter 1 for true and 0 for false and if you enter 
                       any different result this will break your exam"),nl,
    read(S2),nl,result((9,L,L1,L2,S1,S2),T);
	(   L==1->L1==1->L2\==1),write("Are you good in analyzing data and numbers? Please enter 1 for true and 0 for false and if you
                                    enter any different result this will break your exam"),nl,
    read(S1),nl,write("Do you consider yourself a well-organized person? Please enter 1 for true and 0 for false and if you enter
                       any different result this will break your exam"),nl,
    read(S2),nl,result((9,L,L1,L2,S1,S2),T);
	(   L==1->L1==1->L2==1),write("Are you good in analyzing data and numbers? Please enter 1 for true and 0 for false and if you
                                   enter any different result this will break your exam"),nl,
    read(S1),nl,write("Do you consider yourself a well-organized person? Please enter 1 for true and 0 for false and if you enter
                       any different result this will break your exam"),nl,
    read(S2),nl,result((9,L,L1,L2,S1,S2),T).




result(1,1,1,1,1,'T').
result((0,0,0,0,0,0),'').
result((0,0,0,0,0,1),'').
result((0,0,0,0,1,0),'').
result((0,0,0,0,1,1),'').
result((0,0,0,1,0,0),'').
result((0,0,0,1,0,1),'').
result((0,0,0,1,1,0),'').
result((0,0,0,1,1,1),'Cyber Security ').
result((0,0,1,0,0,0),'').
result((0,0,1,0,0,1),'').
result((0,0,1,0,1,0),'').
result((0,0,1,0,1,1),'Cyber Security ').
result((0,0,1,1,0,0),'').
result((0,0,1,1,0,1),'Cyber Security ').
result((0,0,1,1,1,0),'Cyber Security ').
result((0,0,1,1,1,1),'Cyber Security ').
result((0,1,0,0,0,0),'').
result((0,1,0,0,0,1),'').
result((0,1,0,0,1,0),'').
result((0,1,0,0,1,1),'Cyber Security ').
result((0,1,0,1,0,0),'').
result((0,1,0,1,0,1),'Cyber Security ').
result((0,1,0,1,1,0),'Cyber Security ').
result((0,1,0,1,1,1),'Cyber Security ').
result((0,1,1,0,0,0),'').
result((0,1,1,0,0,1),'Cyber Security ').
result((0,1,1,0,1,0),'Cyber Security ').
result((0,1,1,0,1,1),'Cyber Security ').
result((0,1,1,1,0,0),'Cyber Security ').
result((0,1,1,1,0,1),'Cyber Security ').
result((0,1,1,1,1,0),'Cyber Security ').
result((0,1,1,1,1,1),'Cyber Security').

result((1,0,0,0,0,0),'').
result((1,0,0,0,0,1),'').
result((1,0,0,0,1,0),'').
result((1,0,0,0,1,1),'').
result((1,0,0,1,0,0),'').
result((1,0,0,1,0,1),'').
result((1,0,0,1,1,0),'').
result((1,0,0,1,1,1),'Clinical Pharmacy').
result((1,0,1,0,0,0),'').
result((1,0,1,0,0,1),'').
result((1,0,1,0,1,0),'').
result((1,0,1,0,1,1),'Clinical Pharmacy').
result((1,0,1,1,0,0),'').
result((1,0,1,1,0,1),'Clinical Pharmacy').
result((1,0,1,1,1,0),'Clinical Pharmacy').
result((1,0,1,1,1,1),'Clinical Pharmacy').
result((1,1,0,0,0,0),'').
result((1,1,0,0,0,1),'').
result((1,1,0,0,1,0),'').
result((1,1,0,0,1,1),'Clinical Pharmacy').
result((1,1,0,1,0,0),'').
result((1,1,0,1,0,1),'Clinical Pharmacy').
result((1,1,0,1,1,0),'Clinical Pharmacy').
result((1,1,0,1,1,1),'Clinical Pharmacy').
result((1,1,1,0,0,0),'').
result((1,1,1,0,0,1),'Clinical Pharmacy').
result((1,1,1,0,1,0),'Clinical Pharmacy').
result((1,1,1,0,1,1),'Clinical Pharmacy').
result((1,1,1,1,0,0),'Clinical Pharmacy').
result((1,1,1,1,0,1),'Clinical Pharmacy').
result((1,1,1,1,1,0),'Clinical Pharmacy').
result((1,1,1,1,1,1),'Clinical Pharmacy').

result((2,0,0,0,0,0),'').
result((2,0,0,0,0,1),'').
result((2,0,0,0,1,0),'').
result((2,0,0,0,1,1),'').
result((2,0,0,1,0,0),'').
result((2,0,0,1,0,1),'').
result((2,0,0,1,1,0),'').
result((2,0,0,1,1,1),'Artificial Intelligence').
result((2,0,1,0,0,0),'').
result((2,0,1,0,0,1),'').
result((2,0,1,0,1,0),'').
result((2,0,1,0,1,1),'Artificial Intelligence').
result((2,0,1,1,0,0),'').
result((2,0,1,1,0,1),'Artificial Intelligence').
result((2,0,1,1,1,0),'Artificial Intelligence').
result((2,0,1,1,1,1),'Artificial Intelligence').
result((2,1,0,0,0,0),'').
result((2,1,0,0,0,1),'').
result((2,1,0,0,1,0),'').
result((2,1,0,0,1,1),'Artificial Intelligence').
result((2,1,0,1,0,0),'').
result((2,1,0,1,0,1),'Artificial Intelligence').
result((2,1,0,1,1,0),'Artificial Intelligence').
result((2,1,0,1,1,1),'Artificial Intelligence').
result((2,1,1,0,0,0),'').
result((2,1,1,0,0,1),'Artificial Intelligence').
result((2,1,1,0,1,0),'Artificial Intelligence').
result((2,1,1,0,1,1),'Artificial Intelligence').
result((2,1,1,1,0,0),'Artificial Intelligence').
result((2,1,1,1,0,1),'Artificial Intelligence').
result((2,1,1,1,1,0),'Artificial Intelligence').
result((2,1,1,1,1,1),'Artificial Intelligence').

result((3,0,0,0,0,0),'').
result((3,0,0,0,0,1),'').
result((3,0,0,0,1,0),'').
result((3,0,0,0,1,1),'').
result((3,0,0,1,0,0),'').
result((3,0,0,1,0,1),'').
result((3,0,0,1,1,0),'').
result((3,0,0,1,1,1),'Computer Science ').
result((3,0,1,0,0,0),'').
result((3,0,1,0,0,1),'').
result((3,0,1,0,1,0),'').
result((3,0,1,0,1,1),'Computer Science ').
result((3,0,1,1,0,0),'').
result((3,0,1,1,0,1),'Computer Science ').
result((3,0,1,1,1,0),'Computer Science ').
result((3,0,1,1,1,1),'Computer Science ').
result((3,1,0,0,0,0),'').
result((3,1,0,0,0,1),'').
result((3,1,0,0,1,0),'').
result((3,1,0,0,1,1),'Computer Science ').
result((3,1,0,1,0,0),'').
result((3,1,0,1,0,1),'Computer Science ').
result((3,1,0,1,1,0),'Computer Science ').
result((3,1,0,1,1,1),'Computer Science ').
result((3,1,1,0,0,0),'').
result((3,1,1,0,0,1),'Computer Science ').
result((3,1,1,0,1,0),'Computer Science ').
result((3,1,1,0,1,1),'Computer Science ').
result((3,1,1,1,0,0),'Computer Science ').
result((3,1,1,1,0,1),'Computer Science ').
result((3,1,1,1,1,0),'Computer Science ').
result((3,1,1,1,1,1),'Computer Science ').
result((4,0,0,0,0,0),'').
result((4,0,0,0,0,1),'').
result((4,0,0,0,1,0),'').
result((4,0,0,0,1,1),'').
result((4,0,0,1,0,0),'').
result((4,0,0,1,0,1),'').
result((4,0,0,1,1,0),'').
result((4,0,0,1,1,1),'Medicine').
result((4,0,1,0,0,0),'').
result((4,0,1,0,0,1),'').
result((4,0,1,0,1,0),'').
result((4,0,1,0,1,1),'Medicine').
result((4,0,1,1,0,0),'').
result((4,0,1,1,0,1),'Medicine').
result((4,0,1,1,1,0),'Medicine').
result((4,0,1,1,1,1),'Medicine').
result((4,1,0,0,0,0),'').
result((4,1,0,0,0,1),'').
result((4,1,0,0,1,0),'').
result((4,1,0,0,1,1),'Medicine').
result((4,1,0,1,0,0),'').
result((4,1,0,1,0,1),'Medicine').
result((4,1,0,1,1,0),'Medicine').
result((4,1,0,1,1,1),'Medicine').
result((4,1,1,0,0,0),'').
result((4,1,1,0,0,1),'Medicine').
result((4,1,1,0,1,0),'Medicine').
result((4,1,1,0,1,1),'Medicine').
result((4,1,1,1,0,0),'Medicine').
result((4,1,1,1,0,1),'Medicine').
result((4,1,1,1,1,0),'Medicine').
result((4,1,1,1,1,1),'Medicine').
result((5,0,0,0,0,0),'').
result((5,0,0,0,0,1),'').
result((5,0,0,0,1,0),'').
result((5,0,0,0,1,1),'').
result((5,0,0,1,0,0),'').
result((5,0,0,1,0,1),'').
result((5,0,0,1,1,0),'').
result((5,0,0,1,1,1),'Industrial Design ').
result((5,0,1,0,0,0),'').
result((5,0,1,0,0,1),'').
result((5,0,1,0,1,0),'').
result((5,0,1,0,1,1),'Industrial Design ').
result((5,0,1,1,0,0),'').
result((5,0,1,1,0,1),'Industrial Design ').
result((5,0,1,1,1,0),'Industrial Design ').
result((5,0,1,1,1,1),'Industrial Design ').
result((5,1,0,0,0,0),'').
result((5,1,0,0,0,1),'').
result((5,1,0,0,1,0),'').
result((5,1,0,0,1,1),'Industrial Design ').
result((5,1,0,1,0,0),'').
result((5,1,0,1,0,1),'Industrial Design ').
result((5,1,0,1,1,0),'Industrial Design ').
result((5,1,0,1,1,1),'Industrial Design ').
result((5,1,1,0,0,0),'').
result((5,1,1,0,0,1),'Industrial Design ').
result((5,1,1,0,1,0),'Industrial Design ').
result((5,1,1,0,1,1),'Industrial Design ').
result((5,1,1,1,0,0),'Industrial Design ').
result((5,1,1,1,0,1),'Industrial Design ').
result((5,1,1,1,1,0),'Industrial Design ').
result((5,1,1,1,1,1),'Industrial Design ').
result((6,0,0,0,0,0),'').
result((6,0,0,0,0,1),'').
result((6,0,0,0,1,0),'').
result((6,0,0,0,1,1),'').
result((6,0,0,1,0,0),'').
result((6,0,0,1,0,1),'').
result((6,0,0,1,1,0),'').
result((6,0,0,1,1,1),'Interior Design').
result((6,0,1,0,0,0),'').
result((6,0,1,0,0,1),'').
result((6,0,1,0,1,0),'').
result((6,0,1,0,1,1),'Interior Design').
result((6,0,1,1,0,0),'').
result((6,0,1,1,0,1),'Interior Design').
result((6,0,1,1,1,0),'Interior Design').
result((6,0,1,1,1,1),'Interior Design').
result((6,1,0,0,0,0),'').
result((6,1,0,0,0,1),'').
result((6,1,0,0,1,0),'').
result((6,1,0,0,1,1),'Interior Design').
result((6,1,0,1,0,0),'').
result((6,1,0,1,0,1),'Interior Design').
result((6,1,0,1,1,0),'Interior Design').
result((6,1,0,1,1,1),'Interior Design').
result((6,1,1,0,0,0),'').
result((6,1,1,0,0,1),'Interior Design').
result((6,1,1,0,1,0),'Interior Design').
result((6,1,1,0,1,1),'Interior Design').
result((6,1,1,1,0,0),'Interior Design').
result((6,1,1,1,0,1),'Interior Design').
result((6,1,1,1,1,0),'Interior Design').
result((6,1,1,1,1,1),'Interior Design').
result((7,0,0,0,0,0),'').
result((7,0,0,0,0,1),'').
result((7,0,0,0,1,0),'').
result((7,0,0,0,1,1),'').
result((7,0,0,1,0,0),'').
result((7,0,0,1,0,1),'').
result((7,0,0,1,1,0),'').
result((7,0,0,1,1,1),'Nursing').
result((7,0,1,0,0,0),'').
result((7,0,1,0,0,1),'').
result((7,0,1,0,1,0),'').
result((7,0,1,0,1,1),'Nursing').
result((7,0,1,1,0,0),'').
result((7,0,1,1,0,1),'Nursing').
result((7,0,1,1,1,0),'Nursing').
result((7,0,1,1,1,1),'Nursing').
result((7,1,0,0,0,0),'').
result((7,1,0,0,0,1),'').
result((7,1,0,0,1,0),'').
result((7,1,0,0,1,1),'Nursing').
result((7,1,0,1,0,0),'').
result((7,1,0,1,0,1),'Nursing').
result((7,1,0,1,1,0),'Nursing').
result((7,1,0,1,1,1),'Nursing').
result((7,1,1,0,0,0),'').
result((7,1,1,0,0,1),'Nursing').
result((7,1,1,0,1,0),'Nursing').
result((7,1,1,0,1,1),'Nursing').
result((7,1,1,1,0,0),'Nursing').
result((7,1,1,1,0,1),'Nursing').
result((7,1,1,1,1,0),'Nursing').
result((7,1,1,1,1,1),'Nursing').
result((8,0,0,0,0,0),'').
result((8,0,0,0,0,1),'').
result((8,0,0,0,1,0),'').
result((8,0,0,0,1,1),'').
result((8,0,0,1,0,0),'').
result((8,0,0,1,0,1),'').
result((8,0,0,1,1,0),'').
result((8,0,0,1,1,1),'Graphic Design').
result((8,0,1,0,0,0),'').
result((8,0,1,0,0,1),'').
result((8,0,1,0,1,0),'').
result((8,0,1,0,1,1),'Graphic Design').
result((8,0,1,1,0,0),'').
result((8,0,1,1,0,1),'Graphic Design').
result((8,0,1,1,1,0),'Graphic Design').
result((8,0,1,1,1,1),'Graphic Design').
result((8,1,0,0,0,0),'').
result((8,1,0,0,0,1),'').
result((8,1,0,0,1,0),'').
result((8,1,0,0,1,1),'Graphic Design').
result((8,1,0,1,0,0),'').
result((8,1,0,1,0,1),'Graphic Design').
result((8,1,0,1,1,0),'Graphic Design').
result((8,1,0,1,1,1),'Graphic Design').
result((8,1,1,0,0,0),'').
result((8,1,1,0,0,1),'Graphic Design').
result((8,1,1,0,1,0),'Graphic Design').
result((8,1,1,0,1,1),'Graphic Design').
result((8,1,1,1,0,0),'Graphic Design').
result((8,1,1,1,0,1),'Graphic Design').
result((8,1,1,1,1,0),'Graphic Design').
result((8,1,1,1,1,1),'Graphic Design').
result((9,0,0,0,0,0),'').
result((9,0,0,0,0,1),'').
result((9,0,0,0,1,0),'').
result((9,0,0,0,1,1),'').
result((9,0,0,1,0,0),'').
result((9,0,0,1,0,1),'').
result((9,0,0,1,1,0),'').
result((9,0,0,1,1,1),'Business Administration').
result((9,0,1,0,0,0),'').
result((9,0,1,0,0,1),'').
result((9,0,1,0,1,0),'').
result((9,0,1,0,1,1),'Business Administration').
result((9,0,1,1,0,0),'').
result((9,0,1,1,0,1),'Business Administration').
result((9,0,1,1,1,0),'Business Administration').
result((9,0,1,1,1,1),'Business Administration').
result((9,1,0,0,0,0),'').
result((9,1,0,0,0,1),'').
result((9,1,0,0,1,0),'').
result((9,1,0,0,1,1),'Business Administration').
result((9,1,0,1,0,0),'').
result((9,1,0,1,0,1),'Business Administration').
result((9,1,0,1,1,0),'Business Administration').
result((9,1,0,1,1,1),'Business Administration').
result((9,1,1,0,0,0),'').
result((9,1,1,0,0,1),'Business Administration').
result((9,1,1,0,1,0),'Business Administration').
result((9,1,1,0,1,1),'Business Administration').
result((9,1,1,1,0,0),'Business Administration').
result((9,1,1,1,0,1),'Business Administration').
result((9,1,1,1,1,0),'Business Administration').
result((9,1,1,1,1,1),'Business Administration').

