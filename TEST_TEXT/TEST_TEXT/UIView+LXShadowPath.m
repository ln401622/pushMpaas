//
//  UIView+LXShadowPath.m
//  TEST_TEXT
//
//  Created by LiuHaH on 2023/3/7.
//

#import "UIView+LXShadowPath.h"

@implementation UIView (LXShadowPath)
/*
 * shadowColor 阴影颜色
 *
 * shadowOpacity 阴影透明度，默认0
 *
 * shadowRadius  阴影半径，默认3
 *
 * shadowPathSide 设置哪一侧的阴影，
 
 * shadowPathWidth 阴影的宽度，
 
 * type 1-左上右上 2-全方位 3-左下右下
 
 */

-(void)LX_SetShadowPathWith:(UIColor *)shadowColor shadowOpacity:(CGFloat)shadowOpacity shadowRadius:(CGFloat)shadowRadius shadowSide:(LXShadowPathSide)shadowPathSide shadowPathWidth:(CGFloat)shadowPathWidth radiusLocation:(NSInteger)type{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.05 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        UIRectCorner corner ;
        if (type == 1) {
            corner = UIRectCornerTopLeft|UIRectCornerTopRight;
        }else if (type == 2) {
            corner = UIRectCornerAllCorners;
        }else{
            corner = UIRectCornerBottomLeft|UIRectCornerBottomRight;
        }
        if (@available(iOS 11.0,*)) {
            self.layer.cornerRadius = shadowRadius;
            self.layer.maskedCorners = (CACornerMask)corner;
        }else{
            UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:corner cornerRadii:CGSizeMake(shadowRadius, shadowRadius)];
            CAShapeLayer *maskLayer = [[CAShapeLayer alloc]init];
            self.frame = self.bounds;
            maskLayer.path = path.CGPath;
            self.layer.mask = maskLayer;
        }
        self.layer.masksToBounds = NO;
        self.clipsToBounds = NO;
        self.layer.shadowColor = shadowColor.CGColor;
        self.layer.shadowOpacity = shadowOpacity;
        //设置抗锯齿边缘
        self.layer.rasterizationScale = [UIScreen mainScreen].scale;
        self.layer.shadowOffset = CGSizeZero;
        CGRect shadowRect;
        CGFloat originX = 0;
        CGFloat originY = 0;
        CGFloat originW = self.bounds.size.width;
        CGFloat originH = self.bounds.size.height;
        switch (shadowPathSide) {
            case LXShadowPathTop:
                shadowRect  = CGRectMake(originX, originY - shadowPathWidth/2, originW,  shadowPathWidth);
                break;
            case LXShadowPathBottom:
                shadowRect  = CGRectMake(originX, originH -shadowPathWidth/2, originW, shadowPathWidth);
                break;
            case LXShadowPathLeft:
                shadowRect  = CGRectMake(originX - shadowPathWidth/2, originY, shadowPathWidth, originH);
                break;
            case LXShadowPathRight:
                shadowRect  = CGRectMake(originW - shadowPathWidth/2, originY, shadowPathWidth, originH);
                break;
            case LXShadowPathNoTop:
                shadowRect  = CGRectMake(originX -shadowPathWidth/2, originY +1, originW +shadowPathWidth,originH + shadowPathWidth/2 );
                break;
            case LXShadowPathAllSide:
                shadowRect  = CGRectMake(originX - shadowPathWidth/2, originY - shadowPathWidth/2, originW +  shadowPathWidth, originH + shadowPathWidth);
                break;
        }
        UIBezierPath *path =[UIBezierPath bezierPathWithRect:shadowRect];
        self.layer.shadowPath = path.CGPath;
    });
}
@end

