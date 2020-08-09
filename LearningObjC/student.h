//
//  student.h
//  LearningObjC
//
//  Created by Denis on 10.08.2020.
//  Copyright © 2020 Melandra. All rights reserved.
//

#ifndef student_h
#define student_h

@interface Student : NSObject

@property (nonatomic, readonly) int age;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *surname;

- (NSString*) fullName;
- (instancetype) initWithName: (NSString*) name surname: (NSString*) surname andAge: (int)age;
- (int) increaseAgeByOneYear;
- (NSString*) description;

@end

#endif /* student_h */
