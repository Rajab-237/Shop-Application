package handler;

/**
 * @author Lenovo
 */
public class item implements java.io.Serializable{
    int id;
    int qtity;
    
    public item(int _id){
    this.qtity=0;
    this.id=_id;
    }
    
    public void setItemId(int _id){
    this.id =_id;
    }

    public void AddItemCount(){
    this.qtity =this.qtity + 1;
    }
    
    public void DecreaseItemCount(){
    this.qtity =this.qtity - 1;
    }
    public void removeItemCount(){
    this.qtity =0;
    }
    
     public  int getItemCount(){
    return this.qtity ;
    }
     public int getId(){
    return this.id ;
    }
}
