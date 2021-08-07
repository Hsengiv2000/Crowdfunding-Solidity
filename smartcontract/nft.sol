 
import "https://github.com/0xcert/ethereum-erc721/src/contracts/tokens/nf-token-metadata.sol";
import "https://github.com/0xcert/ethereum-erc721/src/contracts/ownership/ownable.sol";
 
contract newNFT is NFTokenMetadata, Ownable {
    
  uint256 public tokenCounter;
  constructor() {
    nftName = "Fund NFT";
    nftSymbol = "FUND";
    tokenCounter = 0 ; 
  }
 
  function mint(string calldata _uri) external onlyOwner {
    super._mint(msg.sender, tokenCounter);
    super._setTokenUri(tokenCounter, _uri);
    tokenCounter = tokenCounter + 1 ; 
  }
 
}
