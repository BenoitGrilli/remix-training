pragma solidity 0.8.7;

contract test {

    mapping(address => uint) Balance;

    function getBalance(address _myAddress) public view returns(uint) {
        return Balance[_myAddress];
    }
    
    receive() external payable {
        //msg.value
        //msg.sender
        Balance[msg.sender] = msg.value;
    }
}