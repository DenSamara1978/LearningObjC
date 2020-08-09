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
                result = firstNumber + secondNumber;
                isValid = YES;
                break;
            case '-':
                result = firstNumber - secondNumber;
                isValid = YES;
                break;
            case '/':
                result = firstNumber / secondNumber;
                isValid = YES;
                break;
            case '*':
                result = firstNumber * secondNumber;
                isValid = YES;
                break;
            case '%':
                result = firstNumber % secondNumber;
                isValid = YES;
                break;
        }
        
        if (isValid){
            NSLog(@"The result of %d %s %d is %d", firstNumber, operation, secondNumber, result);
        } else {
            NSLog(@"The operation is incorrect!");
        }
        
        NSLog(@"The average of (1, 3, 12) is %f", average(1, 3, 12));
    }
    return 0;
}
