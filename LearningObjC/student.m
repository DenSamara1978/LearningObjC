//
//  student.m
//  LearningObjC
//
//  Created by Denis on 10.08.2020.
//  Copyright © 2020 Melandra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "student.h"

@implementation Student

- (NSString*) fullName {
    return [self.name stringByAppendingString:([@" " stringByAppendingString:self.surname])];
}

- (instancetype) initWithName: (NSString*) name surname: (NSString*) surname andAge: (int)age {
    _age = age;
    _name = name;
    _surname = surname;
    return self;
}

- (int) increaseAgeByOneYear {
    return ++_age;
}

- (NSString*) description {
    return [NSString stringWithFormat:@"Student: %@, age is %i", self.fullName, self.age];
}

@end
