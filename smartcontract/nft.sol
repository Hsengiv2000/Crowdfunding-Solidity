pragma solidity 0.8.0;
 
import "https://github.com/0xcert/ethereum-erc721/src/contracts/tokens/nf-token-metadata.sol";
import "https://github.com/0xcert/ethereum-erc721/src/contracts/ownership/ownable.sol";
 
contract newNFT is NFTokenMetadata, Ownable {
    
  uint256 public tokenCounter;
  constructor() {
    nftName = "Fund NFT";
    nftSymbol = "FUND";
    tokenCounter = 0 ; 
  }
 
  function mint(address _to, string calldata _uri) external onlyOwner {
    super._mint(_to, tokenCounter);
    super._setTokenUri(tokenCounter, _uri);
    tokenCounter = tokenCounter + 1 ; 
  }
 
}
