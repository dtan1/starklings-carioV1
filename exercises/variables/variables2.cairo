// variables2.cairo
// Execute `starklings hint variables2` or use the `hint` watch subcommand for a hint.


// soln on line 8 " let mut x = 10; "
use debug::PrintTrait;

fn main() {
    let mut x: u8 = 10;
    if x == 10 {
        ('x is ten!').print();
    } else {
        ('x is not ten!').print();
    }
}
