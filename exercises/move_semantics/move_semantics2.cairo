// move_semantics2.cairo
// Make me compile without changing line 16 or moving line 13!
// Execute `starklings hint move_semantics2` or use the `hint` watch subcommand for a hint.

use array::ArrayTrait;
use debug::PrintTrait;


// line 13 is let mut arr1 = fill_arr(arr0);,
// line 16 is arr0.print();
//
// soln : create a new array var arr0 and get back the ownership, i.e. let arr0 = arr1; (note arr1 is not longer accessible after)
//          or re-create a new array var arr0 let arr0 = ArrayTrait::new();
// note : if use clone , i.e. let arr0 = arr1.clone(), then arr1 is STILL accessible after this statement

fn main() {
    let arr0 = ArrayTrait::new();

    let mut arr1 = fill_arr(arr0);

    //let arr0 = arr1;   // transfer ownership to arr0
    let arr0 = ArrayTrait::new();

    //let arr0 = arr1.clone();
    //arr1.print();

    // Do not change the following line!
    arr0.print();
}

fn fill_arr(arr: Array<felt252>) -> Array<felt252> {
    let mut arr = arr;

    arr.append(22);
    arr.append(44);
    arr.append(66);

    arr
}
