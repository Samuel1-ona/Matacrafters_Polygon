// SPDX-License-Identifier: UNLICENSED 
pragma solidity ^0.8.18;

import "erc721a/contracts/ERC721A.sol";

contract NGATokenNFT is ERC721A {
    uint8 public maxSupply = 5;

    constructor() ERC721A("EAGLES", "EAGLE") {}

    function safeMint(uint8 _quantity) external payable {
        _safeMint(msg.sender, _quantity);
    }

    function _baseURI() internal pure override returns (string memory) {
        return "ipfs://QmRzGnVD1x5m2exeoKvRpoCxupg6WtwrdcRvgDJDs1Ban4/";
    }

    function promptDescription() external pure returns (string memory) {
        return "Eagle Haven: NFT Collection Celebrating Africa's Avian Majesty.";
    }

    function balanceOf(address owner) public view override returns (uint256) {
        return super.balanceOf(owner);
    }
}