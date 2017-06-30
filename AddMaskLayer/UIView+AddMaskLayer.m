//
//  UIView+AddMaskLayer.m
//  AddMaskLayer
//
//  Created by qq on 2017/6/30.
//  Copyright © 2017年 qq. All rights reserved.
//

#import "UIView+AddMaskLayer.h"
#import <objc/runtime.h>

@implementation UIView (AddMaskLayer)
@dynamic maskColoredLayer;

-(CALayer*)maskColoredLayer{
    return objc_getAssociatedObject(self, @selector(maskColoredLayer));
}
-(void)setMaskColoredLayer:(CALayer *)layer{
    objc_setAssociatedObject(self, @selector(maskColoredLayer), layer, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(void)addMaskLayer:(UIColor *)color{
    if(self.maskColoredLayer==nil){
        self.maskColoredLayer = [CALayer layer];
        self.maskColoredLayer.frame = self.bounds;
        
        self.maskColoredLayer.cornerRadius = self.layer.cornerRadius;
        [self.layer insertSublayer:self.maskColoredLayer atIndex:100];
    }
    self.maskColoredLayer.backgroundColor = color.CGColor;
}
-(void)removeMaskLayer{
    if(self.maskColoredLayer){
        [self.maskColoredLayer removeFromSuperlayer];
        self.maskColoredLayer = nil;
    }
}
@end
