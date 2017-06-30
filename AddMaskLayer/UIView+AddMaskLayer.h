//
//  UIView+AddMaskLayer.h
//  AddMaskLayer
//
//  Created by qq on 2017/6/30.
//  Copyright © 2017年 qq. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (AddMaskLayer)

@property(strong,nonatomic)CALayer* maskColoredLayer;

-(void)addMaskLayer:(UIColor*)color;
-(void)removeMaskLayer;
@end
