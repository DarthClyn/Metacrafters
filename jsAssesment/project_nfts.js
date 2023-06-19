
// Creating a variable to hold  NFT's
const NFTs = []


function mintNFT (_name,_eyecolor,_shirtType,_bling) {               // this function will take in some values as parameters, create an
   const NFT={
      "Name":_name,"Eyecolor":_eyecolor,
      "ShirtType":_shirtType,"Bling":_bling
   }
   NFTs.push(NFT);                                                   // Storing NFT metadata in the variable NFTs.
   console.log("Minted: "+_name);

}


function listNFTs () {
   console.log("\nListing NFTs")
   for(let nft=0;nft<NFTs.length;nft++){                             // Creating a "loop" that will go through an "array" of NFT's
      console.log("\nName     : ",NFTs[nft].Name);                   // Printing NFT metadata with console.log()
      console.log("Eyecolor : ",NFTs[nft].Eyecolor);
      console.log("ShirtType: ",NFTs[nft].ShirtType);
      console.log("Bling    : ",NFTs[nft].Bling);
   }

}


function getTotalSupply() {                                         // Printing the total number of NFTs we have minted to the console
   console.log(NFTs.length);

}
//Driver CODE
mintNFT("Darth","Yellow","Black","Locket");                          // Calling  functions below this line
mintNFT("Zhits","Blue","Green","Chain");
listNFTs();
getTotalSupply();
