//
//  main.m
//  LearningObjC
//
//  Created by Denis on 26.07.2020.
//  Copyright © 2020 Melandra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *strArray = @[@"One", @"Two", @"Skip", @"Three", @"End", @"Four"];
        
        NSLog(@"-----");
        for (int i = 0; i < strArray.count; ++i) {
            NSLog(@"%@", strArray[i]);
        }
        
        NSLog(@"-----");
        for (int i = 0; (i < strArray.count) && ([strArray[i] length] < 4); ++i) {
            NSLog(@"%@", strArray[i]);
        }

        NSLog(@"-----");
        int i = 0;
        while (i < 4) {
            NSLog(@"%@", strArray[i++]);
        }
        
        NSLog(@"-----");
        i = 0;
        while (true) {
            if ([strArray[i] isEqualToString:@"Skip"]) {
                ++i;
                continue;
            }
            if ([strArray[i] isEqualToString:@"End"])
                break;
            NSLog(@"%@", strArray[i++]);
        }
        NSLog(@"-----");
        
        Student *student = [[Student alloc] initWithName:@"Ivan" surname:@"Ivanov" andAge:18];
        NSLog(@"%@", [student fullName]);
        NSLog(@"%@", student);
    }
    return 0;
}
