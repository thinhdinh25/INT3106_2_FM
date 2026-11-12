sig Author {}

sig Member {}

sig Librarian extends Member {}

sig Book {
    authors: some Author,
    borrowedBy: lone Member
}

one sig Library {
    catalog: set Book,
    members: set Member
}

pred Show {}
run Show for 3
