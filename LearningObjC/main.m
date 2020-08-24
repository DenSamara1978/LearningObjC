//
//  main.m
//  LearningObjC
//
//  Created by Denis on 26.07.2020.
//  Copyright © 2020 Melandra. All rights reserved.
//

#import <Foundation/Foundation.h>

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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSNumber *firstNumber = [NSNumber new];
        NSNumber *secondNumber = [NSNumber new];
        int number = 0;
        char operation[100];
        
        NSLog(@"Enter the first number");
        scanf("%d", &number);
        firstNumber = [NSNumber numberWithInt:number];
        
        NSLog(@"Enter the second number");
        scanf("%d", &number);
        secondNumber = [NSNumber numberWithInt:number];
        
        NSLog(@"Enter the math operation");
        scanf("%s", operation);
        
        NSNumber *result = [NSNumber new];
        BOOL isValid = NO;
        switch(operation[0]){
            case '+':
                result = [NSNumber numberWithInt: operationAddition(firstNumber.intValue, secondNumber.intValue)];
                isValid = YES;
                break;
            case '-':
                result = [NSNumber numberWithInt: operationSubstraction(firstNumber.intValue, secondNumber.intValue)];
                isValid = YES;
                break;
            case '/':
                result = [NSNumber numberWithInt: operationDivision(firstNumber.intValue, secondNumber.intValue)];
                isValid = YES;
                break;
            case '*':
                result = [NSNumber numberWithInt: operationMultiplication(firstNumber.intValue, secondNumber.intValue)];
                isValid = YES;
                break;
            case '%':
                result = [NSNumber numberWithInt: operationRemainder(firstNumber.intValue, secondNumber.intValue)];
                isValid = YES;
                break;
        }
        
        if (isValid){
            NSLog(@"The result of %@ %s %@ is %@", firstNumber, operation, secondNumber, result);
        } else {
            NSLog(@"The operation is incorrect!");
        }
        [firstNumber release];
        [secondNumber release];
    }
    return 0;
}
