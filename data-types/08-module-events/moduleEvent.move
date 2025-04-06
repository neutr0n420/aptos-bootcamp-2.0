
module helloWorld::module_event{
    #[event]
    struct TransferEvent has drop, store{
        sender: address,
        reciever: address, 
        amount: u64
    }

    //emiting the event
    let event = TransferEvent{
        sender: 0xRiseIn,
        reciever: 0xAryan, 
        amount: 100
    }
    0x1::event::emit(event);
}
