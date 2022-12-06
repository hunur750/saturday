public  class devturkish {
    

    public static Integer ogrenciSayisi=0;
    



    public string firstName;
    public string lastName;
    private string schoolName='Dream School';
    public String className;
    public Boolean art;
    public Boolean sport;
    public Integer ingGrade;
    public integer mathGrade;
    public integer fenGrade;
    public devturkish() {
        system.debug('Yeni bir kayit oldu.Hayirli olsun.');
        ogrenciSayisi++;
    }
    public devturkish( String fname, String lName, string cName, Boolean ar){
       this();
       
       this.firstName=fname;
       this.lastName=lName;
       this.className=cName;
       this.art=ar;
       






    }

    public void message(){
        system.debug( firstName+'okulumuzun'+' '+ogrenciSayisi + ' . ogrenci olarak kayadoldu.');
    }
    
    

        
    


}
