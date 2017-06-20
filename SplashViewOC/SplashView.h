//
//  SplashView.h
//  SplashViewOC
//
//  Created by 刘毅 on 2017/6/20.
//  Copyright © 2017年 vpjacob. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^tapSplashImageBlock)(NSString *actionUrl);
typedef void(^splashViewDissmissBlock)(BOOL initiativeDismiss);

@interface SplashView : UIView

- (void)showSplashViewDuration:(NSInteger)duration defalutImage:(UIImage *)defalutImage tapBlock:(tapSplashImageBlock)tapBlock splashViewDismissBlock:(splashViewDissmissBlock)dissMissBlock;

@end
