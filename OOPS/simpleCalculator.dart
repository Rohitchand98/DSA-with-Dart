
void main() {
    double n1=10.5;
    double n2=5.5;
    String oper="*";
    late double result;
    print("Welcome to the Simple Calculator!");
    print("First number: $n1");
    print("Second number: $n2");
    switch(oper){
        case "*": {
            print("Operation: $oper");
            result=n1*n2;
            print("Result: ${result}\n\nCalculation Summary:\n$n1 $oper $n2 = $result");
        }
        break;
        case "+": {print("Operation: $oper");
            result=n1+n2;
            print("Result: ${result}\n\nCalculation Summary:\n$n1 $oper $n2 = $result");
        }
        break;
        case "/": {print("Operation: $oper");
            result=n1/n2;
            print("Result: ${result}\n\nCalculation Summary:\n$n1 $oper $n2 = $result");}
        break;
        case "-": {print("Operation: $oper");
            result=n1-n2;
            print("Result: ${result}\n\nCalculation Summary:\n$n1 $oper $n2 = $result");}
        break;
        default : {print("Invalid operator");}
        break;
        
    }
}