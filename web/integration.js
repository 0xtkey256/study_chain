const { ApiPromise, WsProvider } = require('@polkadot/api');
const wsProvider = new WsProvider('WSS_URL_TO_ASTAR_NETWORK');
const api = await ApiPromise.create({ provider: wsProvider });
// Interact with Chains and Tokens:
const { address, data } = await api.query.system.account('USER_WALLET_ADDRESS');
// Handling Transactions:
const transfer = api.tx.balances.transfer(RECIPIENT_ADDRESS, AMOUNT);
const hash = await transfer.signAndSend(SENDER_ADDRESS);
// Transaction:
api.query.system.events((events) => {
  console.log('Received events:', events);

  // Process each event
  events.forEach((record) => {
    // Extract event data
    const { event, phase } = record;
    const types = event.typeDef;
    const section = event.section;
    const method = event.method;
    const data = event.data.toJSON();

    console.log('Event:', section, method, data);

    // Handle specific events
    if (section === 'balances' && method === 'Transfer') {
      const [from, to, value] = data;
      console.log(`Transfer event: From ${from} to ${to}, Amount: ${value}`);
      // Perform any actions based on the Transfer event
    }
    // Add more conditionals for other event types

    // You can also handle different phases (e.g., ApplyExtrinsic, Finalization)
    if (phase.isApplyExtrinsic) {
      console.log('Event phase: ApplyExtrinsic');
      // Perform actions specific to ApplyExtrinsic phase
    } else if (phase.isFinalization) {
      console.log('Event phase: Finalization');
      // Perform actions specific to Finalization phase
    }
  });
}).catch((error) => {
  console.error('Error listening to events:', error);
});
