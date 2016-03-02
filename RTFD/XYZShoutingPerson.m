//
//  XYZShoutingPerson.m
//  RTFD
//
//  Created by Chris Augg on 2/29/16.
//  Copyright © 2016 Auggie Doggie iOSware. All rights reserved.
//

#import "XYZShoutingPerson.h"
#import "XYZNSString+XYZNSStringDrawing.h"

@interface XYZPerson()

-(void)saySomething:(NSString *)greeting;
-(void)deallocMSG:(NSString *)message;

@end

@implementation XYZShoutingPerson

- (void)saySomething:(NSString *)greeting {
    NSString *uppercaseGreeting = [greeting drawUppercaseStringAtPoint];
    [super saySomething:uppercaseGreeting];
}

-(void)deallocMSG:(NSString *)message {
    NSString *uppercaseMSG = [message drawUppercaseStringAtPoint];
    [super deallocMSG:uppercaseMSG];
}

@end
