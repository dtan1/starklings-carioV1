// enums1.cairo
// No hints this time! ;)


// soln : no need to define unit type for the variant

use debug::print;
use debug::PrintTrait;
enum Message { // TODO: define a few types of messages as used below
    Quit,
    Echo,
    Move,
    ChangeColor
}

fn main() {
    // Message::Quit(()).print();
    // Message::Echo(()).print();
    // Message::Move(()).print();
    // Message::ChangeColor(()).print();

    // no need to define unit type
    Message::Quit.print();
    Message::Echo.print();
    Message::Move.print();
    Message::ChangeColor.print();
}

impl MessagePrintImpl of PrintTrait<Message> {
    fn print(self: Message) {
        match self {
            // Message::Quit(()) => ('Quit').print(),
            // Message::Echo(()) => ('Echo').print(),
            // Message::Move(()) => ('Move').print(),
            // Message::ChangeColor(()) => ('ChangeColor').print(),

            Message::Quit => ('Quit').print(),
            Message::Echo => ('Echo').print(),
            Message::Move => ('Move').print(),
            Message::ChangeColor => ('ChangeColor').print()
        }
    }
}
