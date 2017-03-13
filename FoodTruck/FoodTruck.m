//
//  FoodTruck.m
//  FoodTruck
//
//  Created by Nelson Chow on 2017-03-13.
//  Copyright © 2017 Nelson Chow. All rights reserved.
//

#import "FoodTruck.h"

@implementation FoodTruck

- (instancetype)initWithName:(NSString *)name andFoodType:(NSString *)foodType
{
    self = [super init];
    if (self) {
        _name = name;
        _foodType = foodType;
    }
    return self;
}

-(void)serve:(int)orders {
    /*
     STEP 3: FROM YOUR DELEGATOR, SEND MESSAGES TO YOUR DELEGATE.
     */
    double price = [self.delegate foodTruck:self priceForFood:self.foodType];
    
    NSLog(@"Welcome to %@", self.name);
    NSLog(@"We serve %@ for $%0.2f", self.foodType, price);
    NSLog(@" ");
    
    self.earnings += orders * price;
}

-(void)cashOut {
    NSLog(@"%@ earned $0.2f today!", self.name, self.earnings);
}

@end
