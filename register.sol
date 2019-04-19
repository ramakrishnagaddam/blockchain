pragma solidity ^0.5.1;

contract Register {

    address public owner;
    bytes32 private info;

    event InfoChanged(bytes32 _info);

    constructor() public {
        owner = msg.sender;
    }

    function setInfo(bytes32 _info) public {
        info = _info;
        emit InfoChanged(_info);
    }

    function getInfo() public view returns (bytes32) {
        return info;
    }

}