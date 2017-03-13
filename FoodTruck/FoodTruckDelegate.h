//
//  FoodTruckDelegate.h
//  FoodTruck
//
//  Created by Nelson Chow on 2017-03-13.
//  Copyright © 2017 Nelson Chow. All rights reserved.
//

#import <Foundation/Foundation.h>

@class FoodTruck;
/*
 STEP 1: CREATE A PROTOCOL THAT DEFINES WHAT MESSAGES THE DELEGATE CAN RECEIVE.
*/
@protocol FoodTruckDelegate <NSObject>

-(double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food;

@end
