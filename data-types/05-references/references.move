
module helloWorld::reference{
    fun mut_ref_example(){
        let mut a = 3;
        let a_mut_ref = &mut a;
        *a = 4;
        let value_of_a = a;
    }
}
