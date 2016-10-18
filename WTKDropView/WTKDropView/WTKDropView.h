//
//  WTKDropView.h
//  WTKWineMVVM
//
//  Created by 王同科 on 16/10/18.
//  Copyright © 2016年 王同科. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WTKDropView : UIView
/**
 *  下拉菜单
 */
/**
 *  设置背景图片
 */
@property(nonatomic,strong)UIImage *image;

/**
 *  点击回调
 */
@property(nonatomic,copy) void(^clickBlock)(NSInteger tag);

/**
 *  构建方法
 *  param array   标题
 *  每行默认高度40
 */
- (instancetype)initWithFrame:(CGRect)frame withTitleArray:(NSArray<NSString *> *)array;
/**
 *  移除
 */
- (void)dismiss;

/**
 *  添加之后做动画
 */
- (void)beginAnimation;
@end
