sig Professor {}
sig Pupil {
    Enrolls: set Course,
    Mentor: lone Professor 
}
sig Course {
    Instructor: one Professor,
    Prerequisite: set Course
}
pred Display {}
run Display for 3
