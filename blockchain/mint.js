require("dotenv").config();
const API_URL = process.env.API_URL;
const PUBLIC_KEY = process.env.PUBLIC_KEY;
const PRIVATE_KEY = process.env.PRIVATE_KEY;
const INITIALSUPPLY = process.env.INITIALSUPPLY;

const { createAlchemyWeb3 } = require("@alch/alchemy-web3");
const web3 = createAlchemyWeb3(API_URL);

// Contract ABI for interfacing with the contract
const contract = require("../artifacts/contracts/MyFT.sol/MTT.json");

// Create an instance using the deployed contract address and contract ABI
const contractAddress = process.env.CONTRACT_ADDRESS;
const mttContract = new web3.eth.Contract(contract.abi, contractAddress);

async function mintMTT() {
    const nonce = await web3.eth.getTransactionCount(PUBLIC_KEY, "latest");  // Get the latest nonce of your account

    // Create a transaction
    const tx = {
        'from': PUBLIC_KEY,
        'to': contractAddress,
        'nonce': nonce,
        'gas': 500000,  // ETH fee to execute the contract
        'data': mttContract.methods.mintMTT(PUBLIC_KEY, INITIALSUPPLY).encodeABI() // The computation/operation you want to execute in this transaction
    }

    // Sign the transaction with the private key for submission
    const signPromise = web3.eth.accounts.signTransaction(tx, PRIVATE_KEY);
    signPromise
    .then((signedTx) => {
      web3.eth.sendSignedTransaction(
        signedTx.rawTransaction,
        function (err, hash) {
          if (!err) {
            console.log(
              "The hash of your transaction is: ",
              hash,
              "\nCheck Alchemy's Mempool to view the status of your transaction!"
            )
          } else {
            console.log(
              "Something went wrong when submitting your transaction:",
              err
            )
          }
        }
      )
    })
    .catch((err) => {
      console.log(" Promise failed:", err)
    })
}

mintMTT();