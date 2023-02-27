

class ControllerOperaiontStudent{
  
  List<int> calculetePercfecNum( int initNum , int limitNum ){
    //definicion de variables
    List<int> data = [] ;
    int auxInt = 0;
    int i = initNum;
    for(; i <= limitNum; i++){
        if(i % 2 == 0){
            for(int j = (i / 2).toInt() ; j >= 1 ; j--){
                if( i % j == 0){
                    auxInt = auxInt + j;
                }
            }
            if( auxInt == i)
              data.add( auxInt );
        }
        auxInt = 0;
    }
    return data;
  }



  String riverseString( String data ){
    int size  =  data.length;
    String riverseStr = "" ;
    int count = size;
    List<String>  dataSplit =   data.split(" ");
    for( int i = dataSplit.length -1 ; i >= 0 ; i--){
      riverseStr +=  dataSplit[i];
      riverseStr += " ";
    }
    return riverseStr;
  }
}