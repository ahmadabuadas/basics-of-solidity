pragma solidity ^0.4.0;  //import the virison

 contract Root{
    address owner;
    modifier onlyowner()  {    // same for function /the name came after difined function
        if(msg.sender==owner){
        _;
        }
        else{
        throw;   // create invalid jump
        }
    }
    
    function Root () public {
        owner = msg.sender;
    }
    
    function kill() onlyowner public {
             suicide(owner);
       }
       
}