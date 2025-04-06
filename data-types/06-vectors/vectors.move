
module helloWorld::vectors{
  use std::vector;
 
  fun vector_project() {
    let v = vector::empty<u64>();
    vector::push_back(&mut v, 5); // Adds 5 to the end.

    vector::length(&v); // Gets the length of the vector (1 in this case).

    let value = *vector::borrow(&v, 0); // Get the pointer to the 0 index, then dereferences it to get the value.
    
    vector::remove(&mut v, 0); // Removes the first item, then shifts all subsequent values by 1 in O(n) time.
  }
}
}
