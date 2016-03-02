//
//  main.m
//  RTFD
//
//  Created by Chris Augg on 2/28/16.
//  Copyright © 2016 Auggie Doggie iOSware. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYZPerson.h"
#import "XYZShoutingPerson.h"
#import "XYZPerson+XYZPersonNameDisplayAdditions.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSDateFormatter* formatter = [[NSDateFormatter alloc]init];
        formatter.dateFormat = @"mm/dd/y";
        
        XYZPerson *johnDoe = [XYZPerson person];
        [johnDoe sayHello];
        [johnDoe sayHowAreYou];
        [johnDoe sayCodeIsFun];
        [johnDoe sayGoodbye];
        
        
        // Uses XYZNSString_XYZNSStringDrawing category for uppercase within XYZShouting
        XYZShoutingPerson *JOHNDOE = [XYZShoutingPerson person];
        [JOHNDOE sayHello];
        [JOHNDOE sayHowAreYou];
        [JOHNDOE sayCodeIsFun];
        [JOHNDOE sayGoodbye];
        
        
        XYZPerson *dave;
        
        if (!dave) {
            NSLog(@"Nil automatically assigned");
        }
        
        XYZPerson *ray = [[XYZPerson person]initWithFirstName:@"Ray" lastName:@"Anderson" dateOfBirth:[formatter dateFromString:@"08/02/1979"]];
        
        NSMutableString *nameStr = [NSMutableString stringWithFormat:@"Josh"];
       
        ray.firstName = nameStr;
        
        [nameStr appendString:@"ua"];
        
        [ray sayHello]; // changed from Ray to Joshua without copy. Append did not work when (copy) added.
        NSLog(@"I was born on: %@", [formatter stringFromDate:ray.dateOfBirth]);
        
        XYZPerson *luara = [[XYZPerson person]initWithFirstName:@"Luara" lastName:@"Blackie" dateOfBirth:[formatter dateFromString:@"03/02/1981"]];
        
        ray.spouse = luara;
        luara.spouse = ray;
        
        [luara sayHello];
        [ray sayHello];
        
        NSLog(@"The two people are %@ and %@",
        [luara lastNameFirstNameString], [ray lastNameFirstNameString]);
        [luara measureHeight:[NSNumber numberWithFloat:65.22]]; //inches
        [luara measureWeight:[NSNumber numberWithFloat:122.22]]; //pounds
        NSLog(@"%@ is %.2f inches tall and weighs %.2f pounds", luara.fullName, luara.height.floatValue, luara.weight.floatValue);
    }
    return 0;
}
