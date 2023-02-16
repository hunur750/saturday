/*{

    "Name" : "Bala" ,
    "Age" : 30,
    "Title": "Architect",
    "Salary": 3000.50
}


[
    {

        "Name" : "Bala" ,
        "Age" : 30,
        "Title": "Architect",
        "Salary": 3000.50
    },

    {

        "Name" : "Arjun" ,
        "Age" : 40,
        "Title": "Princial Architect",
        "Salary": 20000.50
    }
]

// Get an account record and convert the same into JSON format
list<Account> acc  =[Select Name, Id  FROM  Account Where Name != null LIMIT 4];
String jsonString =JSON.serialize(acc);
System.debug(jsonString);


//Callout Test
RestCallouts.getAnimals();
RestCallouts.getAirlines();
RestCallouts.getEmployees();
*/
RestCallouts.getCasesUsingNC();
RestCallouts.get2CasesUsingKam();
RestCallouts.postAnimal();

//Solution Design
1-Flow=> Invocable Apex => Future Method(Callout)
2-Trigger =>Future Method(Callout)