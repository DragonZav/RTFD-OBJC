//
//  XYZPerson.m
//  RTFD
//
//  Created by Chris Augg on 2/28/16.
//  Copyright © 2016 Auggie Doggie iOSware. All rights reserved.
//

#import "XYZPerson.h"

@interface XYZPerson ()

@property (readwrite) NSNumber *weight;
@property (readwrite) NSNumber *height;

@end

@implementation XYZPerson

-(id)init {
    return [self initWithFirstName:@"John" lastName:@"Doe" dateOfBirth:nil];
}

-(id)initWithFirstName:(NSString *)aFirstName lastName:(NSString *)aLastName {
    return [self initWithFirstName:aFirstName lastName:aLastName dateOfBirth:nil];
}

-(id)initWithFirstName:(NSString *)aFirstName lastName:(NSString *)aLastName dateOfBirth:(NSDate *)aDOB {
    
    self = [super init];
    
    if (self) {
        self.firstName = aFirstName;
        self.lastName = aLastName;
        self.dateOfBirth = aDOB;
    }
    
    return self;    
}

+(id)person {
    return [[self alloc] init];
}

-(void)sayHello {
    
    [self saySomething:[NSString stringWithFormat:@"Hello, my name is %@", self.fullName]];
    
    if (self.spouse) {
        NSLog(@"I am married to %@ %@", self.spouse.firstName, self.spouse.lastName);
    }
}

-(void)sayGoodbye {
    
    [self saySomething:@"Goodbye"];
}

-(void)sayHowAreYou {
    
    [self saySomething:@"How are you?"];
}

-(void)sayCodeIsFun {
    
    [self saySomething:@"Code is fun!"];
}

-(NSString *)fullName {
    return [NSString stringWithFormat:@"%@ %@", self.firstName, self.lastName];
}

-(void)saySomething:(NSString *)greeting {
    
    NSLog(@"%@",greeting);
}

-(void)deallocMSG:(NSString *)message {
    
    NSLog(@"%@", message);
}

-(void)dealloc {
    
    [self deallocMSG:[NSString stringWithFormat:@"%@ is being deallocated", self.fullName]];
}

-(void)measureWeight:(NSNumber *)weight {
    _weight = weight;
}

-(void)measureHeight:(NSNumber *)height {
    _height = height;
}

@end
