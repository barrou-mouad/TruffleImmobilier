// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Immobilier {

constructor() public {

}

uint256 count = 0;

struct  mycontract {
  string  id ;
  string owner;
  uint256 cout;
}

mapping(uint256 => mycontract) public List;

event show(string _id,string _owner,uint256 _cout);

function getId(uint _id) public view returns(mycontract memory){
      return List[_id] ;
}

function create(string memory _id,string memory _owner,uint256 _cout) public  {
         count++;
         List[count]=mycontract(_id,_owner,_cout);
         emit show(_id,_owner,_cout);
}

  function getCount() public view returns(uint){
    return count;
  }

  function setOwner(string memory _owner,uint256 _index) public {

   List[_index].owner= _owner;

  }


}