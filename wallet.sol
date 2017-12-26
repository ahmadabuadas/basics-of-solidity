pragma solidity ^0.4.0;  //import the virison
import "inherates.sol";

contract MyContract is Root  {   //declerate the name of contract
    uint myVariable;
    address owner;   // defind the owner as address
    mapping(address=>permission) Myaddressmapping;
    struct permission {
        bool isAllowed;
        uint maxBalance;
    }
    
    function  MyContract() payable { // constuctuer(same name of class(contract)) with give init value
        myVariable = 5;
        owner = msg.sender; // give the address for the owner who send
        Myaddressmapping[msg.sender]= permission(true,5) ;
    }
    
     function setmyVariable(uint mynewvariable)  onlyowner  { //setter
        myVariable = mynewvariable;
    }
    
    
    function getmyVariable()  constant returns(uint) {   //getter
    return  myVariable;
    }
    
    
    
    function getmyContractBalace() constant returns(uint){  // get my balance
       return this.balance;   // this return address of the constant
       }
       
       
        function () payable {   // anonamy function call fallback when send data and fill the contract
    
    }
}  