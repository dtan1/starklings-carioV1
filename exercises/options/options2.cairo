// options2.cairo
// Execute `starklings hint options2` or use the `hint` watch subcommand for a hint.


// 2 solns : 2nd one is simple_option2 using match, also added test_options2()  
//  note match is exhaustive, i.e. must provide all cases.

use option::OptionTrait;
use debug::PrintTrait;

#[test]
fn test_options() {
    let target = 'starklings';
    let optional_some = Option::Some(target);
    let optional_none: Option<felt252> = Option::None(());
    simple_option(optional_some);
    simple_option(optional_none);
}

#[test]
fn test_options2() {
    let target = 'starklings';
    let optional_some = Option::Some(target);
    let optional_none: Option<felt252> = Option::None(());
    simple_option2(optional_some);
    simple_option2(optional_none);
}

fn simple_option(optional_target: Option<felt252>) {
    // TODO: use the `is_some` and `is_none` methods to check if `optional_target` contains a value.
    // Place the assertion and the print statement below in the correct blocks.
    if optional_target.is_some() {
        assert(optional_target.unwrap() == 'starklings', 'err1');
    } else if optional_target.is_none() {
         ('option is empty !').print();
    }
    
   
}

 // another solution using match
fn simple_option2(optional_target: Option<felt252>) {
   
    match optional_target {
        Option::Some(x) => {
            assert(optional_target.unwrap() == 'starklings', 'err1');
        },
        Option::None => {
            ('option 2 is empty !').print();
        }

    }
}