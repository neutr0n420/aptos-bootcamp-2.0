
module helloWorld::resources{
    // resources is a struct that is stored onchain
    
    // key ability can be stored in global storage, owned by an account and or owned by an object    
    struct CoinStore<phantom CoinType> has key {
        coin: Coin<CoinType>, 
    }
    // store ability allows structs to be owned by another struct for nested data types which is persitant between the contracts
    struct Coin <phantom CoinType> has store {
        value: u64 
    }

}
