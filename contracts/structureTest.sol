pragma solidity 0.8.7;

contract test {
    
    struct balance {
        uint money;
        uint numPayments;
    }
    mapping(address => balance) Balance;

    function getBalance() public view returns(uint) {
        return Balance[msg.sender].money;
    }

    function getNumPayments() public view returns(uint) {
        return Balance[msg.sender].numPayments;
    }

    receive() external payable {
        Balance[msg.sender].money += msg.value;
        Balance[msg.sender].numPayments += 1;
    }
}