import java.util.*;
import java.util.function.BooleanSupplier;

class Challenge {
    public static void ifElse(BooleanSupplier condition, Runnable thenBody, Runnable elseBody) {
		try {
			int check = 1 / (String.valueOf(condition.getAsBoolean()).length() - 4);
            elseBody.run();
		} catch (Exception e) {
			thenBody.run();
		}
	}

    public static void whileLoop(BooleanSupplier condition, Runnable body) {
        ifElse( condition, 
                () -> { body.run(); whileLoop(condition, body); },
                () -> {});
	}

    private static Scanner ob = new Scanner(System.in);
    private static int ptr; // Data pointer
     
    // Max memory limit. It is the highest number which
    // can be represented by an unsigned 16-bit binary
    // number. Many computer programming environments
    // beside brainfuck may have predefined
    // constant values representing 65535.
    private static int length = 65535;
     
    // Array of byte type simulating memory of max
    // 65535 bits from 0 to 65534.
    private static byte memory[] = new byte[length];

    private static int i = 0;
    private static int c = 0;

    // Interpreter function which accepts the code
    // a string parameter
    private static void interpret(String s)
    {
        c = 0;
         
        // Parsing through each character of the code
        i = 0;
        whileLoop(() -> i < s.length(), () -> {  
            // BrainFuck is a tiny language with only
            // eight instructions. In this loop we check 
            // and execute all those eight instructions
             
             
            // > moves the pointer to the right
            ifElse(() -> s.charAt(i) == '>', () -> {
                ifElse( () -> ptr == length - 1, // If memory is full
                        () -> ptr = 0, // pointer is returned to zero
                        () -> ptr++);
            }, () -> {
                // < moves the pointer to the left
                ifElse(() -> s.charAt(i) == '<', () -> {
                    ifElse( () -> ptr == 0, // If the pointer reaches zero
                            () -> ptr = length - 1, // pointer is returned to rightmost memory position
                            () -> ptr--);
                }, () -> {
                 
                    // + increments the value of the memory
                    // cell under the pointer
                    ifElse( () -> s.charAt(i) == '+',
                            () -> memory[ptr] ++,
                            () -> {
         
                        // - decrements the value of the memory cell
                        // under the pointer
                        ifElse( () -> s.charAt(i) == '-',
                                () -> memory[ptr] --,
                                () -> {
             
                            // . outputs the character signified by the
                            // cell at the pointer
                            ifElse( () -> s.charAt(i) == '.',
                                    () -> System.out.print((char)(memory[ptr])),
                                    () -> {
             
                                // , inputs a character and store it in the
                                // cell at the pointer
                                ifElse( () -> s.charAt(i) == ',',
                                        () -> memory[ptr] = (byte)(ob.next().charAt(0)),
                                        () -> {
             
                                    // [ jumps past the matching ] if the cell
                                    // under the pointer is 0
                                    ifElse( () -> s.charAt(i) == '[', () -> {
                                        ifElse( () -> memory[ptr] == 0, () -> {
                                            i++;
                                            whileLoop(() -> c > 0 || s.charAt(i) != ']', () ->
                                                {
                                                    ifElse( () -> s.charAt(i) == '[',
                                                            () -> c++,
                                                            () -> ifElse(() -> s.charAt(i) == ']', () -> c--, () -> {})
                                                    );
                                                    i++;
                                                }
                                            );
                                        }, () -> {});
                                    }, () -> {

                                        // ] jumps back to the matching [ if the
                                        // cell under the pointer is nonzero
                                        ifElse(() -> s.charAt(i) == ']', () -> {
                                            ifElse( () -> memory[ptr] != 0, () -> {
                                                i--;
                                                whileLoop(() -> c > 0 || s.charAt(i) != '[', () ->
                                                    {
                                                        ifElse( () -> s.charAt(i) == ']',
                                                                () -> c++,
                                                                () -> ifElse(() -> s.charAt(i) == '[', () -> c--, () -> {})
                                                        );
                                                        i--;
                                                    }
                                                );
                                                i--;
                                            }, () -> {});
                                        }, () -> {});
                                    });
                                });
                            });
                        });
                    });
                });
            });
            i++;
        });
    }
 
    // Driver code
    public static void main(String args[])
    {
        System.out.println("Enter the code:");
        String code = ob.nextLine();
        System.out.println("Output:");
        interpret(code);
    }
}
