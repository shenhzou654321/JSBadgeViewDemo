//
//  RootViewController.m
//  JSBadgeViewDemo
//
//  Created by 周兴龙 on 13-2-20.
//  Copyright (c) 2013年 周兴龙. All rights reserved.
//

#import "RootViewController.h"
#import "JSBadgeView.h"
@interface RootViewController ()

@end

@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.view.backgroundColor = [UIColor colorWithRed:0.8 green:0.8 blue:0.8 alpha:0.8];
    
    UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake(20, 100, 200, 60)];
    img.backgroundColor = [UIColor orangeColor];
    
    JSBadgeView *js = [[JSBadgeView alloc]initWithParentView:img alignment:JSBadgeViewAlignmentBottomCenter];
    js.badgeValue = 8;
    js.badgePositionAdjustment = CGPointMake(100, -60);
    [js release];
    [self.view addSubview:img];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
