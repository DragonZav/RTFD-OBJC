//
//  XYZPerson.h
//  RTFD
//
//  Created by Chris Augg on 2/28/16.
//  Copyright © 2016 Auggie Doggie iOSware. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYZPerson : NSObject

@property (copy) NSString *firstName;
@property (copy) NSString *lastName;
@property NSDate *dateOfBirth;
@property (readonly) NSString *fullName;
@property (weak) XYZPerson *spouse;
@property (readonly) NSNumber *weight;
@property (readonly) NSNumber *height;

+(id)person;
-(void)sayHello;
-(void)sayGoodbye;
-(void)sayHowAreYou;
-(void)sayCodeIsFun;
-(void)measureWeight:(NSNumber *)weight;
-(void)measureHeight:(NSNumber *)height;

- (id)initWithFirstName:(NSString *)aFirstName lastName:(NSString *)aLastName dateOfBirth:(NSDate *)aDOB;

@end
