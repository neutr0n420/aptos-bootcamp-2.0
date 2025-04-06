module SendMessage::sendMessage {
    use std::string::{String, utf8};
    use std::signer;
    use aptos_framework::account;

    // Creating resources
    struct Message has key {
        my_message: String,
    }
    // creating instructions for the resources
    public entry fun store_message(account: &signer, msg: String) acquires Message{
        let signer_address = signer::address_of(account);
        if(!exists<Message>(signer_address)){
            let message = Message {
                my_message: msg,
            };
            move_to(account, message);  
            // move_to()
            // move_from()
            // borrow_global()
            // borrow_global_mut()
        } else {
            let message = borrow_global_mut<Message>(signer_address);
            message.my_message = msg;
        }
    }
    #[test(admin = @0x1234)]
    public entry fun test_store_message(admin: signer) acquires Message {
        account::create_account_for_test(signer::address_of(&admin));
        store_message(&admin, utf8(b"Hello for the first time!"));
        store_message(&admin, utf8(b"Hello for the second time!"));
        let message = borrow_global<Message>(signer::address_of(&admin));
        assert!(message.my_message == utf8(b"Hello for the second time!"));
    }


}