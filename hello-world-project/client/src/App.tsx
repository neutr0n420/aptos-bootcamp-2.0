import './App.css'
import {useWallet, InputSubmitTransactionData, InputTransactionData} from "@aptos-labs/wallet-adapter-react"
import {WalletSelector} from "@aptos-labs/wallet-adapter-ant-design"
import {Aptos, AptosConfig, Network} from "@aptos-labs/ts-sdk"
import { useState } from 'react';

const config = new AptosConfig({network: Network.DEVNET});
const aptos = new Aptos(config);
function App() {
  const [message, setMessage] = useState("");
  const MODULE_ADDRESS = "0x43b049c72958e5b9521c386d75d5decfc3599fe29e01485fee92af0f0df55c82";
  const {account, signAndSubmitTransaction} = useWallet();

  const writeMessage = async() => {
    if(!account && !message) return

    const transaction: InputTransactionData = {
      data: {
        function: `${MODULE_ADDRESS}::sendMessage::store_message`,
        functionArguments:[message] 
      }
    }
    const response = await signAndSubmitTransaction(transaction);
    await aptos.waitForTransaction({transactionHash: response.hash});
    console.log("Transaction is successfully sent", response)
  }

  return (
    <>
      <div className='flex justify-between items-center px-12 py-6'>
        <h1 className='text-xl'>Write Transaction</h1>
        <WalletSelector/>
        {/* <button className='border px-4 py-2 rounded hover:bg-black hover:text-white border-black'>Connect Wallet</button> */}
      </div>
      <hr />
      <div className='flex flex-col justify-center my-16 mx-[300px] outline outline-gray-800 px-28 py-8'>
        <div className=' flex flex-col   rounded-lg  text-left'>
          <label htmlFor="" className=''>Write your message</label>
          <textarea name="" id="" cols={60} rows={15} className='border rounded px-4' onChange={(e) => setMessage(e.target.value) }></textarea>
        </div>
        <div>
          <button className='border px-4 py-2 my-6 rounded hover:bg-black hover:text-white border-black' onClick={writeMessage}>Submit Message</button>
        </div>
      </div>
    </>
  )
}

export default App
