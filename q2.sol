//SPDX-License-Identifier:MIT

pragma solidity 0.8.18;
contract aadhardetails{
    struct person{
    uint dob;
    string name;
    string addinfo;
    address walletadd;
    }
    mapping(address=>person) private Person;
    function storedetails(uint _dob, string memory _name,string memory _addinfo) public {
     Person[msg.sender]=person(_dob,_name,_addinfo,msg.sender);
    }
function viewdetails(address addinfsee) public view  returns(uint,string memory,string memory,address){
  require(addinfsee==msg.sender,"you can only see your details.");
 person memory persona = Person[msg.sender];
        return (persona.dob,persona.name, persona.addinfo, persona.walletadd);

}

}
