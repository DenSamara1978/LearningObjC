//
//  main.m
//  LearningObjC
//
//  Created by Denis on 26.07.2020.
//  Copyright © 2020 Melandra. All rights reserved.
//

#import <Foundation/Foundation.h>

double average(double firstArg, double secondArg, double thirdArg) {
    return (firstArg + secondArg + thirdArg) / 3;
}

int operationAddition(int arg1, int arg2) {
    return arg1 + arg2;
}

int operationSubstraction(int arg1, int arg2) {
    return arg1 - arg2;
}

int operationMultiplication(int arg1, int arg2) {
    return arg1 * arg2;
}

int operationDivision(int arg1, int arg2) {
    return arg1 / arg2;
}

int operationRemainder(int arg1, int arg2) {
    return arg1 % arg2;
}

BOOL isInEnglishAlpabet(char symbol) {
    return (((symbol>='A') && (symbol <= 'Z')) ||
            ((symbol>='a') && (symbol <= 'z')));
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int firstNumber;
        int secondNumber;
        char operation[200];
        NSLog(@"Enter the first number");
        scanf("%d", &firstNumber);
        NSLog(@"Enter the second number");
        scanf("%d", &secondNumber);
        NSLog(@"Enter the math operation");
        scanf("%s", operation);
        int result = 0;
        BOOL isValid = NO;
        switch(operation[0]){
            case '+':
                result = operationAddition(firstNumber, secondNumber);
                isValid = YES;
                break;
            case '-':
                result = operationSubstraction(firstNumber, secondNumber);
                isValid = YES;
                break;
            case '/':
                result = operationDivision(firstNumber, secondNumber);
                isValid = YES;
                break;
            case '*':
                result = operationMultiplication(firstNumber, secondNumber);
                isValid = YES;
                break;
            case '%':
                result = operationRemainder(firstNumber, secondNumber);
                isValid = YES;
                break;
        }
        
        if (isValid){
            NSLog(@"The result of %d %s %d is %d", firstNumber, operation, secondNumber, result);
        } else {
            NSLog(@"The operation is incorrect!");
        }
        
        NSLog(@"The average of (1, 3, 12) is %f", average(1, 3, 12));
        
        NSLog(@"Enter a symbol");
        char symbols[100];
        scanf("%s", symbols);
        NSLog(@"Entered symbol is %sa symbol of English alphabet", isInEnglishAlpabet(symbols[0]) ? "" : "not ");
        
    }
    return 0;
}
