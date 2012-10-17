>> class Komplex                                                                
|    def initialize(re, im)                                                     
|      @re, @im = re, im                                                        
|      end                                                                      
|    def abs                                                                    
|      Math.sqrt(@re**2 + @im**2)                                               
|      end                                                                      
|    def re                                                                     
|      @re                                                                      
|      end                                                                      
|    def re=(r)                                                                 
|      @re = r                                                                  
|      end                                                                      
|    end                                                                        
=> nil                                                                          
>> k = Komplex(2, 3)
NoMethodError: undefined method `Komplex' for main:Object                       
        from (irb):15                                                           
        from /usr/bin/irb:12:in `<main>'                                        
>> k = new Komplex(2, 3)                                                        
NoMethodError: undefined method `Komplex' for main:Object                       
        from (irb):16                                                           
        from /usr/bin/irb:12:in `<main>'                                        
>> k = Komplex.new(2, 3)                                                        
=> #<Komplex:0x00ea2db0                                                         
    @im = 3,                                                                    
    attr_accessor :re = 2                                                       
>                                                                               
>> k.abs                                                                        
=> 3.605551275463989                                                            
>> k.re                                                                         
=> 2                                                                            
>> k.re = 4                                                                     
=> 4                                                                            
>> k.abs                                                                        
=> 5.0                                                                          
>> k.re                                                                         
=> 4 
