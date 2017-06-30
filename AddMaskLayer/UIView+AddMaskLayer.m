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
    CALayer* layer = objc_getAssociatedObject(self, @selector(maskColoredLayer));
    if(!layer){
        layer = [CALayer layer];
        self.maskColoredLayer = layer;
        layer.frame = self.bounds;
        
        layer.cornerRadius = self.layer.cornerRadius;
        [self.layer insertSublayer:layer atIndex:100];
        
    }
    return layer;
}
-(void)setMaskColoredLayer:(CALayer *)layer{
    objc_setAssociatedObject(self, @selector(maskColoredLayer), layer, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(void)addMaskLayer:(UIColor *)color{
    self.maskColoredLayer.backgroundColor = color.CGColor;
}
-(void)removeMaskLayer{
    if(self.maskColoredLayer){
        [self.maskColoredLayer removeFromSuperlayer];
        self.maskColoredLayer = nil;
    }
}
@end
