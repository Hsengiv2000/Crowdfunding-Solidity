function uintToABI(num){
    // for the projects smartcontract 
    // num = an integer
    // num should be retrived from frontend and then call this function to get their ABI encoding
    // this should later be added to the abi encoding of the smartcontract 
    var hex = Number(num).toString(16);
    paddingLength = 64 - hex.length  ; 
    padding = "0".repeat(paddingLength) ; 
    return padding + hex ;
}

function addressToABI(address){

    // for the nft smartcontract 
    // address is ethereum address
    // address should be retrived from frontend and then call this function to get their ABI encoding
    // this should later be added to the abi encoding of the smartcontract function
    address = address.toString().slice(2) ; 
    paddingLength = 64 - address.length ; 
    padding = "0".repeat(paddingLength) ; 
    return padding + address ;  
}

//console.log(addressToABI("0xE83c7bfB339500B74F80e1F80F1258811353D53E"))
