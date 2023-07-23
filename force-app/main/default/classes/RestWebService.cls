@RestResource (urlMapping ='/Account1/*')
Global class RestWebService {
    
@Httpget
    global static list<Account> doGet(){
      
        list<Account> results = [Select id , Name, Phone ,Website from Account];
        return results;
        
    }
    
}