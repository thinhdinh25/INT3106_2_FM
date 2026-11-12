sig Tutor {}
sig Learner {
    Registered: set Unit,
    Advisor: lone Tutor 
}
sig Unit {
    Coordinator: one Tutor,
    Predecessor: set Unit
}
pred ValidState {}
run ValidState for 3
