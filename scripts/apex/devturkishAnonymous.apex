devturkish s1= new devturkish();
s1.firstName= 'John';
s1.lastName='Doe';
s1.className='7e';
s1.art=false;
s1.sport= true;
s1.ingGrade=85;
s1.mathGrade=95;
s1.fenGrade=90;
system.debug(s1);
s1.message();
devturkish s2= new devturkish();
s2.firstName='Hayri';
s2.lastName='Akay';
s2.className='8P';
s2.art= true;
s2.sport=false;
s2.ingGrade=45;
s2.mathGrade=65;
s2.fenGrade=68;
system.debug(s2);
s2.message();

List<devturkish> ogrenciler = new List<devturkish>();
ogrenciler.add(s1);
ogrenciler.add(s2);
System.debug('==============Liste=========');
System.debug(ogrenciler);
System.debug('========== parametreli constructor==========');

devturkish s3 = new devturkish('Marry', 'Fire', '11a', true);
s3.fenGrade=25;
System.debug(s3);
s3.message();

devturkish ss1= new devturkish('Esma', 'Toprak', '10B', true);
devturkish ss2= new devturkish('Tolga', 'Mermer', '9A', false);
devturkish ss3= new devturkish('Ali', 'Kaya', '11B', true);
devturkish ss4= new devturkish('Cem', 'Gumus', '16B', true);


System.debug(devturkish.students);



