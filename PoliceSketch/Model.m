//
//  Model.m
//  PoliceSketch
//
//  Created by David Guichon on 2017-03-13.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Model.h"

@implementation Model

-(instancetype)init
{
    self = [super init];
    if (self) {
        _eyesHolderIndex = 0;
        _noseHolderIndex = 0;
        _mouthHolderIndex = 0;
        [self setArrayHolders];
    }
    return self;
}

-(void)moveForwardEyesHolder{
    self.eyesHolderIndex = self.eyesHolderIndex + 1;
    if (self.eyesHolderIndex == 4){
        self.eyesHolderIndex = 0;
    }
    [self callCurrentSelection];
}

-(void)moveBackwardEyesHolder{
    self.eyesHolderIndex = self.eyesHolderIndex - 1;
    if (self.eyesHolderIndex == -1) {
        self.eyesHolderIndex =3;
    }
    [self callCurrentSelection];
}

-(void)moveForwardNoseHolder{
    self.noseHolderIndex = self.noseHolderIndex + 1;
    if (self.noseHolderIndex ==4){
        self.noseHolderIndex = 0;
    }
    [self callCurrentSelection];
}

-(void)moveBackwardNoseHolder{
    self.noseHolderIndex = self.noseHolderIndex - 1;
    if (self.noseHolderIndex == -1){
        self.noseHolderIndex = 3;
    }
    [self callCurrentSelection];
}

-(void)moveForwardMouthHolder{
    self.mouthHolderIndex = self.mouthHolderIndex + 1;
    if (self.mouthHolderIndex ==4){
        self.mouthHolderIndex = 0;
    }
    [self callCurrentSelection];
}

-(void)moveBackwardMouthHolder{
    self.mouthHolderIndex = self.mouthHolderIndex - 1;
    if (self.mouthHolderIndex == -1){
        self.mouthHolderIndex = 3;
    }
    [self callCurrentSelection];
}

-(void)callCurrentSelection{
    self.currentSelection = @[_eyesHolder[_eyesHolderIndex], _noseHolder[_noseHolderIndex], _mouthHolder[_mouthHolderIndex]];
}

//In the Init Methods
-(void)setArrayHolders{
    _eyesHolder = @[[UIImage imageNamed:@"eyes_1.jpg"],[UIImage imageNamed:@"eyes_2.jpg"],[UIImage imageNamed:@"eyes_3.jpg"],[UIImage imageNamed:@"eyes_4.jpg"],[UIImage imageNamed:@"eyes_5.jpg"]];
    _mouthHolder = @[[UIImage imageNamed:@"mouth_1.jpg"],[UIImage imageNamed:@"mouth_2.jpg"],[UIImage imageNamed:@"mouth_3.jpg"],[UIImage imageNamed:@"mouth_4.jpg"],[UIImage imageNamed:@"mouth_5.jpg"]];
    _noseHolder = @[[UIImage imageNamed:@"nose_1.jpg"],[UIImage imageNamed:@"nose_2.jpg"],[UIImage imageNamed:@"nose_3.jpg"],[UIImage imageNamed:@"nose_4.jpg"], [UIImage imageNamed:@"nose_5.jpg"]];
    _currentSelection = @[_eyesHolder[_eyesHolderIndex], _noseHolder[_noseHolderIndex], _mouthHolder[_mouthHolderIndex]];
}


@end
