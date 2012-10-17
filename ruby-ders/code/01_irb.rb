$ ruby -e 'puts "hello"'                                   
hello
$ irb
>> 2**3                                                                         
=> 8                                                                            
>> "Foo "*3                                                                     
=> "Foo Foo Foo "                                                               
>> quit
>> ri "Array"                                                                   
Looking up topics [Object#Array, Kernel#Array, Kernel::Array] oo.               
More than 1 article found                                                       
                                                                                
  1 Object#Array (422b)                                                         
  2 Kernel#Array (387b)                                                         
                                                                                
>> 1                                                                            
Object#Array                                                                    
                                                                                
(from ruby core)                                                                
Implementation from Kernel                                                      
------------------------------------------------------------------------------  
  Array(arg)    -> array                                                        
                                                                                
                                                                                
------------------------------------------------------------------------------  
                                                                                
Returns arg as an Array. First tries to call                                    
arg.to_ary, then arg.to_a.                                                      
                                                                                
  Array(1..5)   #=> [1, 2, 3, 4, 5]  
...
>> ri "Array#sort"                                                              
Looking up topics [Array#sort, Enumerable#sort] oo                              
More than 1 article found                                                       
                                                                                
  1 Array#sort (718b)                                                           
  2 Enumerable#sort (834b)                                                      
                                                                                
>> 1                                                                            
Array#sort                                                                      
                                                                                
(from ruby core)                                                                
------------------------------------------------------------------------------  
  ary.sort                   -> new_ary                                         
  ary.sort {| a,b | block }  -> new_ary                                         
                                                                                
                                                                                
------------------------------------------------------------------------------  
                                                                                
Returns a new array created by sorting self. Comparisons for the sort           
will be done using the <=> operator or using an optional code block.
...

Returns the non-negative square root of numeric.                                
                                                                                
  0.upto(10) {|x|                                                               
    p [x, Math.sqrt(x), Math.sqrt(x)**2]                                        
  }                                                                             
  #=>                                                                           
  [0, 0.0, 0.0]                                                                 
  [1, 1.0, 1.0]                                                                 
  [2, 1.4142135623731, 2.0]                                                     
  [3, 1.73205080756888, 3.0]                                                    
  [4, 2.0, 4.0]                                                                 
  [5, 2.23606797749979, 5.0]                                                    
  [6, 2.44948974278318, 6.0]                                                    
  [7, 2.64575131106459, 7.0]                                                    
  [8, 2.82842712474619, 8.0]                                                    
  [9, 3.0, 9.0]                                                                 
=> nil                                                                          
>> Math.sqrt(4)                                                                 
=> 2.0                                                                          
>> Math.sqrt(4) ** 2                                                            
=> 4.0                                                                          
>>                                                                              
seyyah@ustad-seyyah:~
