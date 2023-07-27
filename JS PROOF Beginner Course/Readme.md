# NFT Collection

This JavaScript program is an "NFT Collection" program that simulates the working of smart contracts on a blockchain network.

## Description

This is a JavaScript program that simulates the working of a smart contract on a blockchain network by implementing the actions of a smart contract through functions. First, I have created a dynamic array through which the functions will interact with the given metadata.

It has three functions:

* `mintNFT()` function stores metadata inside an array.
* `listNFT()` function iterates through the array to display the metadata.
* `getTotalSupply()` function displays the total number of NFTs, which is equal to the length of the array.

## Getting Started

### Executing program

* To run this program, you can use any online/offline JavaScript compiler. You can either directly download the file present inside the repository and run it on any JavaScript IDE of your choice, or follow these steps:
  * Online: Open any online IDE that supports JavaScript and copy-paste the code provided below.
  * Offline: Open your offline IDE (like VS Code). Create a file with a `.js` extension and copy-paste the code provided below.

```javascript
const nfts = [];

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

function listNFTs() {
    for (let i = 0; i < nfts.length; i++) {
        console.log("\nID\t: " + (i + 1));
        console.log("Name\t: " + nfts[i].name);
        console.log("Uid\t: " + nfts[i].uid);
        console.log("Class\t: " + nfts[i].class);
        console.log("Sec\t: " + nfts[i].sec);
    }
}

function getTotalSupply() {
    console.log("\nTotal number of NFTS: " + nfts.length);
}

```

* To interact with this program, you have to call its functions. This can be done by copying and pasting the snippet provided below or using it as a reference to call the functions in your own way.

```javascript
mintNFT("Aayush Yash", "21BCS10420", "908", "A");
mintNFT("Vishal Yadav", "21BCS10424", "908", "B");
mintNFT("Abhinav Pandey", "21BCS10434", "908", "B");
mintNFT("Ayush Prakash", "21BCS10437", "908", "A");
listNFTs();
getTotalSupply();
```

## Authors

[Aayush Yash](https://www.linkedin.com/in/aayush-yash "www.linkedin.com/in/aayush-yash")

## Additional

[Link](https://github.com/Aayushyaash/Metacrafters-Summer-Training "https://github.com/Aayushyaash/Metacrafters-Summer-Training") to my Metacrafters summer training repository.

[Link](https://www.loom.com/share/8a4fad3659a248aea78565d2ae35297b?sid=899fc21f-07ea-4f8a-914a-490f2203c9e9 "https://www.loom.com/share/8a4fad3659a248aea78565d2ae35297b?sid=899fc21f-07ea-4f8a-914a-490f2203c9e9") to my video explanation.

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
