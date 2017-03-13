//
//  Cashier.m
//  FoodTruck
//
//  Created by Nelson Chow on 2017-03-13.
//  Copyright © 2017 Nelson Chow. All rights reserved.
//

#import "Cashier.h"

@implementation Cashier

-(double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food {
    if ([food isEqualToString:@"bao"]) {
        return 1.5;
    } else if ([food isEqualToString:@"shortbread"]) {
        return 2.5;
    } else {
        return 0;
    }
}

@end
