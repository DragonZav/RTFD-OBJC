//
//  XYZPerson+XYZPersonNameDisplayAdditions.m
//  RTFD
//
//  Created by Chris Augg on 2/29/16.
//  Copyright © 2016 Auggie Doggie iOSware. All rights reserved.
//

#import "XYZPerson+XYZPersonNameDisplayAdditions.h"

@implementation XYZPerson (XYZPersonNameDisplayAdditions)

- (NSString *)lastNameFirstNameString {
    return [NSString stringWithFormat:@"%@, %@", self.lastName, self.firstName];
}

@end
