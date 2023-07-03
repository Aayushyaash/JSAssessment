/*
Assessment Requirements
1. Create a variable that can hold a number of NFT's. What type of variable might this be?
2. Create an object inside your mintNFT function that will hold the metadata for your NFTs. 
   The metadata values will be passed to the function as parameters. When the NFT is ready, 
   you will store it in the variable you created in step 1
3. Your listNFTs() function will print all of your NFTs metadata to the console (i.e. console.log("Name: " + someNFT.name))
4. For good measure, getTotalSupply() should return the number of NFT's you have created
*/

// create a variable to hold your NFT's
const nfts = [];

// this function will take in some values as parameters, create an
// NFT object using the parameters passed to it for its metadata, 
// and store it in the variable above.
function mintNFT(iname, iuid, iclass, isec) {
    const nft = {
        name: iname,
        uid: iuid,
        class: iclass,
        sec: isec
    }
    nfts.push(nft);
    console.log("Minted: " + iname);
}

// create a "loop" that will go through an "array" of NFT's
// and print their metadata with console.log()
function listNFTs() {
    for (let i = 0; i < nfts.length; i++) {
        console.log("\nID\t: " + (i + 1));
        console.log("Name\t: " + nfts[i].name);
        console.log("Uid\t: " + nfts[i].uid);
        console.log("Class\t: " + nfts[i].class);
        console.log("Sec\t: " + nfts[i].sec);
    }
}

// print the total number of NFTs we have minted to the console
function getTotalSupply() {
    console.log("\nTotal number of NFTS: " + nfts.length);
}

// call your functions below this line

mintNFT("Aayush Yash", "21BCS10420", "908", "A");
mintNFT("Vishal Yadav", "21BCS10424", "908", "B");
mintNFT("Abhinav Pandey", "21BCS10434", "908", "B");
mintNFT("Ayush Prakash", "21BCS10437", "908", "A");
listNFTs();
getTotalSupply();
