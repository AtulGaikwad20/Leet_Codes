SELECT Person.firstName, Person.lastName, Address.city, Address.state
FROM Person
Left join Address
ON Person.personID = Address.personID;