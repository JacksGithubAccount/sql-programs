DROP Table GroupMembership
CREATE Table GroupMembership
(GroupID int primary key identity,
IndividualID int not null
CONSTRAINT GroupIndividualID
UNIQUE (IndividualID))