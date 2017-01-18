//
//  ViewController.m
//  Labb1
//
//  Created by Fredrik Börjesson on 12/01/17.
//  Copyright © 2017 Fredrik Börjesson. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISlider *redSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueSlider;
@property (weak, nonatomic) IBOutlet UIView *colorView;

@end

@implementation ViewController

extern double redColor;
extern double greenColor;
extern double blueColor;

UIColor *choosenColor;

-(void)refreshColorViev{
    self.colorView.backgroundColor = [self currentColor];
}

-(UIColor*) currentColor{
    return [UIColor colorWithRed:redColor
                           green:greenColor
                           blue:blueColor
                           alpha:1.0];
}




-(IBAction)SliderChanged:(UISlider *)sender{
    redColor = self.redSlider.value;
    greenColor = self.greenSlider.value;
    blueColor = self.blueSlider.value;
    [self refreshColorViev];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self refreshColorViev];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
