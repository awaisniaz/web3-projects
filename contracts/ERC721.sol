// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
contract MyNFT is ERC721, Ownable{

unit256 private _nextTokenId;
bytes private _baseTokenURI;

constructor(string calldata baseURI) ERC721("MyNFT","MNAF"){
    _baseTokenURI = baseURI;
}

function _baseURI() internal view override return (string memory){
    return _baseTokenURI;
}

function mintNFT(address to) public onlyOwner {
    _safeMin(to,_nextTokenId);
    _nextTokenId++
}


}