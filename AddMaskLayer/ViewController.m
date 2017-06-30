//
//  ViewController.m
//  AddMaskLayer
//
//  Created by qq on 2017/6/30.
//  Copyright © 2017年 qq. All rights reserved.
//

#import "ViewController.h"
#import "UIView+AddMaskLayer.h"


@interface ViewController (){
    BOOL isMask ;
}
@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)click:(UIButton*)sender {
    isMask =! isMask;
    if(isMask){
        [sender addMaskLayer:[UIColor colorWithWhite:1 alpha:0.6]];
    }else{
        [sender removeMaskLayer];
    }
}

@end
