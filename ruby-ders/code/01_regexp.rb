>> def are_you_sure?                                                            
|    while true                                                                 
|      print "Are you sure? [y/n]: "                                            
|      response = gets                                                          
|      case response                                                            
|        when /^[yY]/                                                           
|        return true                                                            
|        when /^[nN]/, /^$/                                                     
|        return false                                                           
|        end                                                                    
|      end                                                                      
|    end                                                                        
=> nil                                                                          
>> are_you_sure?                                                                
Are you sure? [y/n]: a                                                          
Are you sure? [y/n]: a                                                          
Are you sure? [y/n]: s                                                          
Are you sure? [y/n]: 1                                                          
Are you sure? [y/n]: yes                                                        
=> true                                                                         
>> are_you_sure?                                                               
Are you sure? [y/n]: r                                                          
Are you sure? [y/n]: nop                                                        
=> false                                                                        
>> are_you_sure?                                                                
Are you sure? [y/n]: aaa                                                        
Are you sure? [y/n]: ayes                                                       
Are you sure? [y/n]: a yes                                                      
Are you sure? [y/n]: o no                                                       
Are you sure? [y/n]: n                                                          
=> false                                                                        
>>
