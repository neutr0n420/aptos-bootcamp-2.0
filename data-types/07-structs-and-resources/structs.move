module helloWorld::structs{
    struct Foo {
        x: u64,
        y: bool
    }

    // structs have 4 abilities
// 1. Key:  allows storing in global address space. This lets the struct be used as a Resource.
// 2. Store allows storing under another struct in global address space. This is commonly enabled on Resources.
// 3. Drop allows the data to be implicitly deleted / dropped when no longer referenced. Without Drop the data must be explicitly deconstructed.
// 4. Copy allows for data to be implicitly copied. This is useful for things like strings.

    struct Foo has copy, drop {
        x: u64,
        y: bool
    }
}
