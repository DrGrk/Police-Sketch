//
//  Model.h
//  PoliceSketch
//
//  Created by David Guichon on 2017-03-13.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Model : NSObject

@property (nonatomic) NSInteger eyesHolderIndex;
@property (nonatomic, strong) NSArray *eyesHolder;

@property (nonatomic, strong) NSArray *noseHolder;
@property (nonatomic) NSInteger noseHolderIndex;

@property (nonatomic, strong) NSArray *mouthHolder;
@property (nonatomic) NSInteger mouthHolderIndex;

@property (nonatomic, strong) NSArray *currentSelection;

-(void)moveForwardEyesHolder;
-(void)moveBackwardEyesHolder;

-(void)moveForwardMouthHolder;
-(void)moveBackwardMouthHolder;

-(void)moveForwardNoseHolder;
-(void)moveBackwardNoseHolder;

-(void)callCurrentSelection;

@end
