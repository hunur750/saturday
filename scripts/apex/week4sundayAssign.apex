SELECT Id, name, StageName, Amount from Opportunity where StageName='ClosedWon' and Amount>=35000
SELECT Id, AccountId, LastName, Account.Name FROM Contact order by LastName desc
select Id, name, amount from opportunity order by Amount desc limit 10
select Id, name,stageName, amount from opportunity where StageName!='ClosedWon' and StageName!='ClosedLost' order by Amount limit 20