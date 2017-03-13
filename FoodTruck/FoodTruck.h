//
//  FoodTruck.h
//  FoodTruck
//
//  Created by Nelson Chow on 2017-03-13.
//  Copyright © 2017 Nelson Chow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FoodTruckDelegate.h"

@interface FoodTruck : NSObject

/*
 STEP B: ADD A DELEGATE PROPERTY TO YOUR DELEGATOR.
 */
@property (nonatomic, weak) id<FoodTruckDelegate> delegate;

@property (nonatomic, assign) float earnings;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *foodType;

-(instancetype)initWithName:(NSString *)name andFoodType:(NSString *)foodType;

-(void)serve:(int)orders;
-(void)cashOut;

@end
