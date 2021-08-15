
def startTest():
    print("================= START THE TEST ==================")

def Business():
    BUSquestion=["Are you assertive and confident in making decisions?",
                 "Can you deal with different personalities?",
                 "Do you take initiative in company growth?",
                 "Are you good in analyzing data and numbers?",
                 "Do you consider yourself a well-organized person?"]
    counter=0
    for i in BUSquestion:
        answer=int(input(i))
        if (answer==1):
            counter += 1
        if (i==BUSquestion[2] and counter < 2):
            break
    if (counter >= 3):
        suitableMajor.append("Business Adminstration")

def Nursing():
    NURquestion = ["Are you able to work under pressure efficiently while maintaining a positive attitude?",
                   "Do you respect people regardless of age, gender or marital status?",
                   "Do you have a great memory, and are you interested in science?",
                   "Are you patient, active, and do you love to work with children?",
                   "Are you interested in working with patients, and do you have a strong sense of responsibility and sound judgment?"]
    counter = 0
    for i in NURquestion:
        answer = int(input(i))
        if (answer == 1):
            counter += 1
        if (i == NURquestion[2] and counter < 2):
            break
    if (counter >= 3):
        suitableMajor.append("Nusring")

def GraphicDesign():
    GDquestion = ["Are you open to criticism and dealing with clients? ",
                  "Do you have a creative talent and an artistic way of thinking?",
                  "Are you open minded and willing to work outside from you comfort zone?",
                  "Do you have strong opinions about what you like and don’t like in a particular field? ",
                  "Are you interested in photography and film making?"]
    counter =0
    for i in GDquestion:
        answer = int(input(i))
        if (answer == 1):
            counter += 1
        if (i == GDquestion[2] and counter < 2):
            break
    if (counter >= 3):
        suitableMajor.append("Graphic Design")

def InteriorDesign():
    IntDquestion = ["Do you mentally rearrange the furniture every time you enter a new place? ",
                    "Are you interested in the many decor styles?",
                    "Do you like working with forms, designs and patterns?",
                    "Are you interested in design techniques, tools, and principles involved in production of precision technical plans, blueprints, drawings, and models? ",
                    "Are you confident in your creativity? Do you like coming up with new ideas?"]
    counter = 0
    for i in IntDquestion:
        answer = int(input(i))
        if (answer == 1):
            counter += 1
        if (i == IntDquestion[2] and counter < 2):
            break
    if (counter >= 3):
        suitableMajor.append("Interior Design")

def IndusterialDesign():
    InduDquestion = ["Do you like inventing and coming up with new solutions to existing or non-existing problems? ",
                    "Are you willing to work with customers and new people every day?",
                    "Do you have an excellent sense of design?",
                    "Do you like to experiment with better and faster ways of doing things?",
                    "Are you patient and open to criticism?"]
    counter = 0
    for i in InduDquestion:
        answer = int(input(i))
        if (answer == 1):
            counter += 1
        if (i == InduDquestion[2] and counter < 2):
            break
    if (counter >= 3):
        suitableMajor.append("Industrial Design")

def CS():
    CSquestion = ["Are you usually patient and good in working with a team?",
                  "Do you think creatively, critically or outside the box? ",
                  "Do you have problem solving and high mathematical skills?",
                  "Do you have a good evaluation sense and analytical skills? ",
                  "Are you interested in programming and solving technical problems?"]
    counter = 0
    for i in CSquestion:
        answer = int(input(i))
        if (answer == 1):
            counter += 1
        if (i == CSquestion[2] and counter < 2):
            break
    if (counter >= 3):
        suitableMajor.append("Computer Science")

def AI():
    AIquestion = ["Do you have problem-analysis skills with a logical reflection?",
                  "Do you have a solid mathematical and statistical background? ",
                  "Are you overly observant and fast performing?",
                  "Do you like to develop yourself and abreast of all technological developments around you?",
                  "Do you have an interest in artificial intelligence and machine learning?"]
    counter = 0
    for i in AIquestion:
        answer = int(input(i))
        if (answer == 1):
            counter += 1
        if (i == AIquestion[2] and counter < 2):
            break
    if (counter >= 3):
        suitableMajor.append("Artificial Intelligence")


def CyberSec():
    AIquestion = ["Do you have the ability to work under stress? ",
                  "Are you interested to learn about the security and hacking? ",
                  "Do you have the problem solving skills? ",
                  "Are you passionate about computer forensics? ",
                  "Do you pay attention to details? "]
    counter = 0
    for i in AIquestion:
        answer = int(input(i))
        if (answer == 1):
            counter += 1
        if (i == AIquestion[2] and counter < 2):
            break
    if (counter >= 3):
        suitableMajor.append("Cyber Security ")


def Pharmacy():
    Pharmquestion = ["Do you have a patience and communication skills to work with the patient?",
                     "Do you have a good memory to deal with variety of diseases?",
                     "Do you have the ability to serves as a front-line educator?",
                     "Are interested to do a round with the doctors to the patient?",
                     "Are you ready to update your knowledge frequently in medicines and diseases?"]
    counter = 0
    for i in Pharmquestion:
        answer = int(input(i))
        if (answer == 1):
            counter += 1
        if (i == Pharmquestion[2] and counter < 2):
            break
    if (counter >= 3):
        suitableMajor.append("Clinical Pharmacy")

def Medicine():
    MIDquestion = ["Do you have the ability to work for long hours and often under pressure?",
                   "Can you tolerate anatomy sessions starting from animals to human beings?",
                   "Do you have analytical ability?",
                   "Do you have the ability to promote health education?",
                   "Do you have good practical skills?"]
    counter = 0
    for i in MIDquestion:
        answer = int(input(i))
        if (answer == 1):
            counter += 1
        if (i == MIDquestion[2] and counter < 2):
            break
    if (counter >= 3):
        suitableMajor.append("Medicine")


def PrintSuitableMajor(suitableMajor):
    for i in suitableMajor:
        print("    "+i)





#############################################################################################
class student:
    name=""
    Tahsili=0.0
    Qudarat=0.0
    HighSchool=0.0
    overallScore=0.0

    def __init__(self,name,Tahsili,Qudarat,HighSchool):
        self.name=name
        self.Tahsili=Tahsili
        self.Qudarat=Qudarat
        self.HighSchool=HighSchool

    def getOverAllScore(self):
        Q= (30/100)*self.Qudarat
        H= (30/100)*self.HighSchool
        T= (40/100)*self.Tahsili
        self.overallScore=Q+H+T
        return self.overallScore

if __name__ == '__main__':

    print("*** WELCOM TO IAU MAJOR ADVISOR *** \n"
          "=================================================== \n \n"
          "Hello dear. \n"
          "This is IAU Major Advisor, we will try to help choose the best major suitable for you in our university \n"
          "The major will be shown for you based on the market need in Saudi Arabia and bassed on your abilities that measured using \n"
          "the High school GPA score, your aptitude tests (Qudorat) score, your scholasic achievement admission test (Tahsili) score, and your hobbies. \n \n")
    select = int(input("Are you ready to provide your academic details"
                       "and start the test ? \n" 
                       "Please enter 1 to start "
                       "or any other number to break the test \n "))
    suitableMajor = []

    while select == 1:
        if select == 1:
            suitableMajor.clear()
            print("================ ACADEMIC DETAILS =================")
            studentName = input("What is your name ? ")
            studentH = float(input("write your High School GPA Score: "))
            studentQ = float(input("write your aptitude tests (Qudorat) Score: "))
            studentT = float(input("write your scholastic achievement admission test (Tahsili) Score: "))
            s = student(studentName,studentT,studentQ,studentH)
            overAllScor= s.getOverAllScore()

            print("Your overall scour is = ", overAllScor ,
                  "\n===================================================\n")

            if (overAllScor < 50 or overAllScor > 100):
                print("you have entered wrong score values! please rewrite your actual scores!\n")

            elif (overAllScor < 64):
                print("There is no suitable major in the system for you in our university,"
                      " try to have higher overall scores to study in our university ❤\n"
                      "==================================================\n=")
                select = int(input("We hope that we have helped you, "
                                   "would you like to repeat the test or exit the system? 1 to continue \n"))
                if select != 1:
                    print("We hope that our suggestion helped you in choosing your major, "
                          "thanks for asking us and we would like to talk with you again ❤")
                    break
            elif (overAllScor >= 64 and overAllScor < 79):
                startTest()
                Business()
                print("\nThe best 'suitable major' for you is: ")
                PrintSuitableMajor(suitableMajor)
                select = int(input("We hope that we have helped you, "
                                   "would you like to repeat the test or exit the system? 1 to continue \n"))
                if select != 1:
                    print("We hope that our suggestion helped you in choosing your major, "
                          "thanks for asking us and we would like to talk with you again ❤")
                    break
            elif (overAllScor >= 79 and overAllScor < 84):
                startTest()
                Business()
                Nursing()
                print("\nThe best 'suitable major' for you is: ")
                PrintSuitableMajor(suitableMajor)
                select = int(input("We hope that we have helped you, "
                                   "would you like to repeat the test or exit the system? 1 to continue \n"))
                if select != 1:
                    print("We hope that our suggestion helped you in choosing your major, "
                          "thanks for asking us and we would like to talk with you again ❤")
                    break
            elif (overAllScor >= 84 and overAllScor < 85):
                startTest()
                Business()
                Nursing()
                GraphicDesign()
                InteriorDesign()
                IndusterialDesign()
                print("\nThe best 'suitable major' for you is: ")
                PrintSuitableMajor(suitableMajor)
                select = int(input("We hope that we have helped you, "
                                   "would you like to repeat the test or exit the system? 1 to continue \n"))
                if select != 1:
                    print("We hope that our suggestion helped you in choosing your major, "
                          "thanks for asking us and we would like to talk with you again ❤")
                    break
            elif (overAllScor >= 85 and overAllScor < 92):
                startTest()
                Business()
                Nursing()
                GraphicDesign()
                InteriorDesign()
                IndusterialDesign()
                CS()
                AI()
                Pharmacy()
                CyberSec()

                print("\nThe best 'suitable major' for you is: ")
                PrintSuitableMajor(suitableMajor)
                select = int(input("We hope that we have helped you, "
                                   "would you like to repeat the test or exit the system? 1 to continue \n"))
                if select != 1:
                    print("We hope that our suggestion helped you in choosing your major, "
                          "thanks for asking us and we would like to talk with you again ❤")
                    break

            elif (overAllScor >= 92 and overAllScor <= 100):
                startTest()
                Business()
                Nursing()
                GraphicDesign()
                InteriorDesign()
                IndusterialDesign()
                CS()
                AI()
                Pharmacy()
                CyberSec()
                Medicine()
                print("\nThe best 'suitable major' for you is: ")
                PrintSuitableMajor(suitableMajor)
                select = int(input("We hope that we have helped you, "
                                   "would you like to repeat the test or exit the system? 1 to continue \n"))
                if select != 1:
                    print("We hope that our suggestion helped you in choosing your major, "
                          "thanks for asking us and we would like to talk with you again ❤")
                    break

    if select != 1:

        print("thanks for visiting us and we would like to talk with you again ❤")

