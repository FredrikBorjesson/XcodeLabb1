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

-(void)refreshColorViev{
    self.colorView.backgroundColor = [self currentColor];
}

-(UIColor*) currentColor{
    return [UIColor colorWithRed:self.redSlider.value
                           green:self.greenSlider.value
                           blue:self.blueSlider.value
                           alpha:1.0];
}

-(IBAction)sliderChanged:(UISlider *)sender{
    [self refreshColorViev];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
