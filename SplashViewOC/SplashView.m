//
//  SplashView.m
//  SplashViewOC
//
//  Created by 刘毅 on 2017/6/20.
//  Copyright © 2017年 vpjacob. All rights reserved.
//

#import "SplashView.h"
static NSString *IMG_URL = @"splash_img_url";
static NSString *ACT_URL = @"splash_act_url";
#define kScreenW [UIScreen mainScreen].bounds.size.width
#define kScreenH [UIScreen mainScreen].bounds.size.height

static CGFloat buttonSize = 36;
static CGFloat buttonSizeW = 60;
static CGFloat buttonSizeH = 25;
static CGFloat buttonMargin = 16;



@interface SplashView ()

@property(nonatomic,strong)NSString *imageUrl;
@property(nonatomic,strong)NSString *actionUrl;
@property(nonatomic,strong)NSTimer *timer;
//@property(copy,nonatomic)tapSplashImageBlock tapBlock;
//@property(copy,nonatomic)splashViewDissmissBlock dissMissBlock;
@property(strong,nonatomic)UIImageView *imageView;
@property(strong,nonatomic)UIButton *skipButton;
@property(nonatomic,assign)CGFloat durationTime;
@property(nonatomic,assign)CGFloat totalDurationTime;
@end

@implementation SplashView

- (instancetype)init{
    if (self == [super initWithFrame:CGRectMake(0, 0,kScreenW ,kScreenH)]) {
        [self initComponents];
    }
    
    return self;
}


- (void)initComponents{
    self.imageUrl = [[NSUserDefaults standardUserDefaults] valueForKey:IMG_URL];
    self.actionUrl = [[NSUserDefaults standardUserDefaults] valueForKey:ACT_URL];
    self.backgroundColor = [UIColor whiteColor];
    self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, kScreenW, kScreenH)];
    self.imageView.userInteractionEnabled = YES;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapImageAction:)];
    [self.imageView addGestureRecognizer:tap];
}

-(void)tapImageAction:(UITapGestureRecognizer *)gesture{
    
}

- (void)showSplashViewDuration:(NSInteger)duration defalutImage:(UIImage *)defalutImage tapBlock:(tapSplashImageBlock)tapBlock splashViewDismissBlock:(splashViewDissmissBlock)dissMissBlock{
    
}

- (void)simpleShowSplashView{
    [self showSplashViewDuration:self.totalDurationTime defalutImage:nil tapBlock:nil splashViewDismissBlock:nil];
}


- (void)setDurationTime:(CGFloat)durationTime{
    [self.skipButton setTitle:[NSString stringWithFormat:@"跳过%lfs",durationTime] forState:UIControlStateNormal];
}

@end
