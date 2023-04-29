//
//  UIView+LXShadowPath.h
//  TEST_TEXT
//
//  Created by LiuHaH on 2023/3/7.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef enum :NSInteger{
    LXShadowPathLeft,
    LXShadowPathRight,
    LXShadowPathTop,
    LXShadowPathBottom,
    LXShadowPathNoTop,
    LXShadowPathAllSide
} LXShadowPathSide;

@interface UIView (LXShadowPath)
/*
 * shadowColor 阴影颜色
 *
 * shadowOpacity 阴影透明度，默认0
 *
 * shadowRadius  阴影半径，默认3
 *
 * shadowPathSide 设置哪一侧的阴影，
 *
 * shadowPathWidth 阴影的宽度，
 *
 * type 1-左上右上 2-全方位 3-左下右下

 */
-(void)LX_SetShadowPathWith:(UIColor *)shadowColor shadowOpacity:(CGFloat)shadowOpacity shadowRadius:(CGFloat)shadowRadius shadowSide:(LXShadowPathSide)shadowPathSide shadowPathWidth:(CGFloat)shadowPathWidth  radiusLocation:(NSInteger)type;

@end

NS_ASSUME_NONNULL_END
