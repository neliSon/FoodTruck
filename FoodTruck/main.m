//
//  main.m
//  FoodTruck
//
//  Created by Nelson Chow on 2017-03-13.
//  Copyright © 2017 Nelson Chow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FoodTruck.h"
#import "Cook.h"
#import "Cashier.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FoodTruck *truckA = [[FoodTruck alloc] initWithName:@"Take a Bao" andFoodType:@"bao"];
        
        FoodTruck *truckB = [[FoodTruck alloc] initWithName:@"Tim Shortons" andFoodType:@"shortbread"];
        
        // create instances of your delegate class
        
//        Cook *cookA = [[Cook alloc] init];
//        
//        Cook *cookB = [[Cook alloc] init];
        
        Cashier *cashierA = [[Cashier alloc] init];
        
        /*
         STEP F: CONNECT YOUR DELEGATOR AND DELEGATE TOGETHER.
         */
        // set truckA and truckB's delegate to your new instance.
//        truckA.delegate = cookA;
//        truckB.delegate = cookB;
        
        truckA.delegate = cashierA;
        truckB.delegate = cashierA;
        
        [truckA serve:10];
        [truckB serve:5];
        
        [truckA cashOut];
        [truckB cashOut];
    }
    return 0;
}
