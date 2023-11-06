// arrays2.cairo
// Your task is to make the test pass without modifying the `create_array` function.
// Make me compile and pass the test!
// Execute `starklings hint arrays2` or use the `hint` watch subcommand for a hint.


// in cairo, memory is immutable. for array, behind the scene, element is added to the back, and remove by popping from the pop_front
// since it could be empty, hence an Option is returned.
// the actual operation (append, pop_front) do not require memory mutation, as it is only performed via pointer updating.

use array::ArrayTrait;
use option::OptionTrait;

// Don't modify this function
fn create_array() -> Array<felt252> {
    let mut a = ArrayTrait::new();
    a.append(42);
    a
}

fn remove_element_from_array(
    ref a: Array<felt252>
) { //TODO something to do here...Is there an array method I can use?
    a.pop_front().unwrap();
}

#[test]
fn test_arrays2() {
    let mut a = create_array();
    assert(*a.at(0) == 42, 'First element is not 42');
}

#[test]
fn test_arrays2_empty() {
    let mut a = create_array();
    remove_element_from_array(ref a);
    assert(a.len() == 0, 'Array length is not 0');
}

