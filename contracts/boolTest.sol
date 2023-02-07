pragma solidity 0.8.7;

contract test {
    
    bool monBool;

    function getBool() public view returns(bool) {
        return monBool;
    }

    function setBool(bool _bool) public {
        monBool = _bool;
    }

}