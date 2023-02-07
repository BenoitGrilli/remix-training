pragma solidity 0.8.7;

contract test {

    uint nombre;
// la première fonction permet de récuperer le nombre 
    function getNombre() public view returns(uint) {
        return nombre;
    }
// fonction pour changer le nombre
    function setNombre(uint _nombre) public {
        nombre = _nombre;
    }
}