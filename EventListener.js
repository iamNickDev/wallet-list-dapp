require('dotenv').config();
const Web3 = require('web3');
const contractABI = require('./WalletListABI.json'); 

const providerUrl = process.env.PROVIDER_URL;
const contractAddress = process.env.CONTRACT_ADDRESS;

const web3 = new Web3(new Web3.providers.WebsocketProvider(providerUrl));
const walletListContract = new web3.eth.Contract(contractABI, contractAddress);

walletListContract.events.WalletAdded({
    fromBlock: 'latest'
})
    .on('data', (event) => {
        console.log(`New wallet added: ${event.returnValues.wallet}`);
    })
    .on('error', (error) => {
        console.error(error);
    });

console.log('Service started. Listening for WalletAdded events...');
