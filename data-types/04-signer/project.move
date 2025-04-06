module helloWorld::Signer{
    public entry fun withdraw(account: &signer, amount:u64){
        let balance = &mut borrow_global_mut<Coin>(Signer::address_of(account)).amount;
        *balance = *balance - account;
        Coin {amount}
    }
}
