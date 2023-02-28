import { LightningElement } from 'lwc';

export default class KutleBodyIndex extends LightningElement {
   kilo;
   boy;
   sonuc;
   degerlendirme;
   changeHandler(event){
        if(event.target.name=="kilogram"){
            this.kilo=event.target.value;

        } else if(event.target.name=="santimetre") {
            this.boy=event.target.value;
        }
        console.log("k", this.kilo);
        // console.log("b", this.boy);

    } 
    handlerClick(){
        this.sonuc=this.kilo/((this.boy*this.boy)/10000);
        console.log("son",this.sonuc);
        if(this.sonuc<18.5){
            this.degerlendirme="İdeal kilonun altinda";
        } else if(this.sonuc>=18.5&& this.sonuc<24.9){
            this.degerlendirme="İdeal kiloda";
        }else if(this.sonuc>=25&& this.sonuc<29.9){
            this.degerlendirme="İdeal kilonun ustunde";
        } else{
            this.degerlendirme="Ideal kilonun cok ustunde OBEZSIN"

        }
        
        //console.log("deg", this.degerlendirme);   

    }
    handlerReset(){
        this.boy=undefined;
        this.kilo=undefined;
        this.degerlendirme=undefined;
        this.sonuc=null;
    }
    
    // 18, 5 kg/m² 'nin altındaki sonuçlar: İdeal kilonun altında
    // 18, 5 kg/m² ile 24, 9 kg/m² arasındaki sonuçlar: İdeal kiloda
    // 25 kg/m² ile 29, 9 kg/m² arasındaki sonuçlar: İdeal kilonun üstünde
    // 30 kg/m² ile 39, 9 kg/m² arasındaki sonuçlar: İdeal kilonun çok üstünde (obez)
    // 40 kg/m² üzerindeki sonuçlar: İdeal kilonun çok üstünde (morbid obez)

}