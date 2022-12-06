map< String, Integer> shopping= new Map<String, Integer>();

shopping.put('apple', 6);

shopping.put('orange', 7);

shopping.put('football', 12);

shopping.put('tangerine', 4);

shopping.put('pen', 12);

integer sizeMap= shopping.size();
System.debug(' items to shop'+ sizeMap);

String getQuantityOf='Apple';// weare getitng value of particular KEy ( string) 
Integer quantityIS= shopping.get(getQuantityOf);
System.debug(getQuantityOf+' quantity is '+ quantityIS);

String getQuantityOf2 ='orange';
Integer quantityIS_2= shopping.get(getQuantityOf2);

System.debug(quantityIS_2);