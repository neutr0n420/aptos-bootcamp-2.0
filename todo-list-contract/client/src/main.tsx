import React from 'react';
import ReactDOM from 'react-dom/client';
import App from './App.tsx';
import { PetraWallet } from "petra-plugin-wallet-adapter";;
import { AptosWalletAdapterProvider } from "@aptos-labs/wallet-adapter-react";


const wallets = [new PetraWallet()];


ReactDOM.createRoot(document.getElementById('root')!).render(
  <React.StrictMode>
    <AptosWalletAdapterProvider plugins={wallets} autoConnect={true} >
      <App />
    </AptosWalletAdapterProvider> 
  </React.StrictMode>,
)
