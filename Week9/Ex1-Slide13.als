

sig Dept {}
sig User {
  depts: some Dept,
  reads: set Doc
}
sig Doc {
  owner: one User,
  dept:  one Dept
}

fact R1 {
  all u: User, d: u.reads |
    d.dept in u.depts or d.owner = u
  some u1: User, d1: Doc | crossRead[u1, d1]
}

pred crossRead[u: User, d: Doc] {
  d in u.reads
  d.dept not in u.depts
}

assert OwnerOnlyCross {
	all u: User, d: u.reads |
	d.dept not in u.depts
	implies d.owner = u
}
check OwnerOnlyCross for 5
