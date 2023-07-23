@RestResource(urlMapping='/Account2/*')
Global class TestingPostOFWorkBench {
    
     @HttpPost  //use to insert Data
    global Static String CheckpostWork(string Name, String Phone,
                                      String Website){
                                 Account ac = new Account();
                                          ac.Name = Name;
                                          ac.Phone= Phone;
                                          ac.Website= Website;
                                          insert ac;
                                          return ac.Id;
                                          
                                          
    }
    
}