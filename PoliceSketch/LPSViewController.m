//
//  LPSViewController.m
//  PoliceSketch
//
//  Created by Steven Masuch on 2014-07-20.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LPSViewController.h"
#import "Model.h"

@interface LPSViewController ()

@property (nonatomic) Model* model;

@end

@implementation LPSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.model = [[Model alloc] init];
    [self updateCurrentSelection];
    
	
    // Here is where you will create the buttons & image views and add them to the view.
}

-(void)updateCurrentSelection{
    self.eyesImage.image = self.model.currentSelection[0];
    self.noseImage.image = self.model.currentSelection[1];
    self.mouthImage.image = self.model.currentSelection[2];
}

- (IBAction)scrollLeftPress1:(id)sender {
    [self.model moveBackwardEyesHolder];
    [self updateCurrentSelection];
}

- (IBAction)scrollRightPress1:(id)sender {
    [self.model moveForwardEyesHolder];
    [self updateCurrentSelection];

}

- (IBAction)scrollLeftPress2:(id)sender {
    [self.model moveBackwardNoseHolder];
    [self updateCurrentSelection];

}

- (IBAction)scrollRightPress2:(id)sender {
    [self.model moveForwardNoseHolder];
    [self updateCurrentSelection];
}

- (IBAction)scrollLeftPress3:(id)sender {
    [self.model moveBackwardMouthHolder];
    [self updateCurrentSelection];

}

- (IBAction)scrollRightPress3:(id)sender {
    [self.model moveForwardMouthHolder];
    [self updateCurrentSelection];

}
@end
