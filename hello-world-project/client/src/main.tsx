import React from 'react'
import ReactDOM from 'react-dom/client'
import {AptosWalletAdapterProvider} from "@aptos-labs/wallet-adapter-react"
import App from './App.tsx'
import './index.css'

ReactDOM.createRoot(document.getElementById('root')!).render(
  <React.StrictMode>
    <AptosWalletAdapterProvider autoConnect = {true}>
    <App />
    </AptosWalletAdapterProvider>
  </React.StrictMode>,
)
