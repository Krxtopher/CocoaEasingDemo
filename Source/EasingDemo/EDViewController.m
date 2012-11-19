//
//  EDViewController.m
//  EasingDemo
//
//  Created by Kristopher Schultz on 11/16/12.
//  Copyright (c) 2012 Kristopher Schultz. All rights reserved.
//

#import "EDViewController.h"
#import "QuadraticEasing.h"

@interface EDViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *carImage;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UILabel *sliderPercentField;
@property (weak, nonatomic) IBOutlet UILabel *positionPercentField;

@property (nonatomic) CGFloat carImageMinX;
@property (nonatomic) CGFloat carImageMaxX;
@property (nonatomic) CGFloat carImageY;

@end

@implementation EDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.carImageY = self.carImage.center.y;
    self.carImageMinX = self.carImage.center.x;
    self.carImageMaxX = self.carImageMinX + 205;
	
    [self displayPercentageValues];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sliderValueChanged:(id)sender
{
    [self updateCarPosition];
    [self displayPercentageValues];
}

- (void)updateCarPosition
{
    CGFloat sliderPercent = self.slider.value;
	
    CGFloat carX = [QuadraticEasing easeInOutValueAtPercent:sliderPercent
                                                       from:self.carImageMinX
                                                         to:self.carImageMaxX];
	
    self.carImage.center = CGPointMake(carX, self.carImageY);
}

- (void)displayPercentageValues
{
    CGFloat sliderPercent = self.slider.value;
    CGFloat positionPercent = [QuadraticEasing easeInOutValueAtPercent:sliderPercent];
	
    self.sliderPercentField.text = [NSString stringWithFormat:@"%.1f%%", sliderPercent * 100];
    self.positionPercentField.text = [NSString stringWithFormat:@"%.1f%%", positionPercent * 100];
}

@end
