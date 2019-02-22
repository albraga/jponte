package pacote;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.http.client.fluent.Request;


public class Jponte {
    
    

    public static void main(String[] args) {
    
        try {
            String result = Request.Get("https://parseapp-e8b30.firebaseio.com/ocorrencias.json").viaProxy("proxycorsp:8080").execute().returnContent().asString();
            System.out.println(result);
        } catch (IOException ex) {
            Logger.getLogger(Jponte.class.getName()).log(Level.SEVERE, null, ex);
        }
      
    }
}
