List<string> coloursList = new list<string>{'white', 'green', 'black','yellow','blue'};
//string[] coloursList= new string[]{'white', 'green', 'black','yellow','blue'};
System.debug('my colourList is '+  coloursList);
Integer listSize= coloursList.size();
System.debug( 'our clour list size is '+listSize);


boolean check =coloursList.contains('red');
System.debug('is red exist'+check);


string lastOne=coloursList.get(coloursList.size()-1).toUpperCase();
System.debug(' uppercese of last color'+lastOne);

string fourthOne=coloursList.get(3).toUpperCase();
System.debug(' uppercese of fourth color'+fourthOne);

//List<String>  coloursCodeList= new List<String>('#FFFFFF','	#008000','	#000000','	#FFFF00','#0000FF');

//Boolean isEqual =coloursList.equals(coloursCodeList);
//System.debug('our comparision list is '+isEqual);

List<String> mergeTwoList= new List<String>();
mergeTwoList.addAll(coloursCodeList);
System.debug(mergeTwoList);


mergeTwoList.addAll(coloursList);
System.debug(mergeTwoList);

