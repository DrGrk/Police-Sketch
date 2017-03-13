//
//  LPSViewController.h
//  PoliceSketch
//
//  Created by Steven Masuch on 2014-07-20.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Model;

@interface LPSViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *eyesImage;
@property (weak, nonatomic) IBOutlet UIImageView *noseImage;
@property (weak, nonatomic) IBOutlet UIImageView *mouthImage;


- (IBAction)scrollLeftPress1:(id)sender;
- (IBAction)scrollRightPress1:(id)sender;


- (IBAction)scrollLeftPress2:(id)sender;
- (IBAction)scrollRightPress2:(id)sender;


- (IBAction)scrollLeftPress3:(id)sender;
- (IBAction)scrollRightPress3:(id)sender;

-(void)updateCurrentSelection;


@end
