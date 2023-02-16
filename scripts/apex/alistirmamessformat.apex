[{
    "Name" : "Bala",
    "Age"   :   30,
    "Title" :  "Architect",
    "Salary":   3000.50
},
{
    "Name" : "Arjun",
    "Age"   :   41,
    "Title" :  "Scientist",
    "Salary":   260.50
}

]

Account acc=[Select Name, Id,Type, Industry, AnnualRevenue from Account where AnnualRevenue!= null LIMIT 1];
string jsonString = JSON.serialize(acc);
System.debug(jsonString);

List<Account> acc=[select name, id, AnnualRevenue from account where AnnualRevenue>= 1000000 LIMIT 4];


string jsonString= JSON.serialize(acc);
system.debug(jsonString);