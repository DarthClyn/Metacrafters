NFTs



## Description

 Simulate minting NFTS by writing some JavaScript code that will create an object that represents your NFT and that will hold its metadata. 
 This metadata can be anything you want, so go crazy! An example of this could be values like name, eye color, shirt type, bling, etc.
 Once you have that, you'll need a variable to store all of your NFTs in. Next, 
 you'll need a function so you can print the details of your epic NFTs to the console.

## Getting Started

### Installing

I have used vs code to write ,compile and deploy a basic js code

### Executing program

  Write the code in js compiler to run this file or download the projects_nfts.js or copy the code run
  Compile the code using default compiler settings
  Create your own driver code or use the one mentioned here
  Run
  
  
  The code should obey requirements :
  

1. Create a variable that can hold a number of NFT's
   Code
        const NFTs = []
2. Create an object inside your mintNFT function that will hold the metadata for your NFTs. 
   The metadata values will be passed to the function as parameters. When the NFT is ready, 
   you will store it in the variable you created in step 1
   Code
        function mintNFT (_name,_eyecolor,_shirtType,_bling)
                 {
                   const NFT={
                      "Name":_name,"Eyecolor":_eyecolor,
                      "ShirtType":_shirtType,"Bling":_bling
                             }
                   NFTs.push(NFT);
                   console.log("Minted: "+_name);
        
                  }
3. Your listNFTs() function will print all of your NFTs metadata to the console (i.e. console.log("Name: " + someNFT.name))
        Code
        function listNFTs () {
                 console.log("\nListing NFTs")
                 for(let nft=0;nft<NFTs.length;nft++){
                    console.log("\nName     : ",NFTs[nft].Name);
                    console.log("Eyecolor : ",NFTs[nft].Eyecolor);
                    console.log("ShirtType: ",NFTs[nft].ShirtType);
                    console.log("Bling    : ",NFTs[nft].Bling);
                 }
              
              }
4. For good measure, getTotalSupply() should return the number of NFT's you have created
      Code
              function getTotalSupply() {
                     console.log(NFTs.length);
                    }

5. Create a driver function that calls all above created Function
   Code
         mintNFT("Darth","Yellow","Black","Locket");
         mintNFT("Zhits","Blue","Green","Chain");
         listNFTs();
         getTotalSupply();
## Authors

harshitsani2002@gmail.com


## License

This project is licensed under the Harshit License - see the LICENSE.md file for details
