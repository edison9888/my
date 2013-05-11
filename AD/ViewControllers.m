//
//  ViewControllers.m
//  AD
//
//  Created by Edward on 13-5-10.
//  Copyright (c) 2013年 斌. All rights reserved.
//

#import "ViewControllers.h"
#import "ViewController.h"
@interface ViewControllers (){
@private
UIViewController * viewControllerOne_,
* viewControllerTwo_,
    * viewControllerThree_,
    * viewControllerFour;

}

@property (nonatomic, retain) UIViewController * viewControllerOne,
* viewControllerTwo,
* viewControllerThree,
* viewControllerFour;

@end

@implementation ViewControllers
@synthesize viewControllerOne   = viewControllerOne_,
viewControllerTwo   = viewControllerTwo_,
viewControllerThree = viewControllerThree_,
viewControllerFour  = viewControllerFour_;

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
	
}
- (void)setup {
    self.viewFrame = (CGRect){CGPointZero, {kKYViewWidth, kKYViewHeight}};
    
    viewControllerOne_   = [[UIViewController alloc] init];
    viewControllerTwo_   = [[UIViewController alloc] init];
    viewControllerThree_ = [[UIViewController alloc] init];
    viewControllerFour_  = [[UIViewController alloc] init];
    
    CGRect childViewFrame = self.viewFrame;
    [viewControllerOne_.view   setFrame:childViewFrame];
    [viewControllerTwo_.view   setFrame:childViewFrame];
    [viewControllerThree_.view setFrame:childViewFrame];
    [viewControllerFour_.view  setFrame:childViewFrame];
    
    [viewControllerOne_.view   setBackgroundColor:[UIColor blackColor]];
    [viewControllerTwo_.view   setBackgroundColor:[UIColor redColor]];
    [viewControllerThree_.view setBackgroundColor:[UIColor greenColor]];
    [viewControllerFour_.view  setBackgroundColor:[UIColor blueColor]];
    
    ViewController *VC = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
    self.viewController = VC;
    self.viewFrame = (CGRect){CGPointZero,{kKYViewWidth,kKYViewHeight}};
    self.tabBarItems = @[@{@"image"           : [NSString stringWithFormat:kKYITabBarItemImageNameFormat,1],
                           @"viewController" : _viewController},
                        @{@"image"          : [NSString stringWithFormat:kKYITabBarItemImageNameFormat, 2],
                           @"viewController" : viewControllerTwo_},
                         @{@"image"          : [NSString stringWithFormat:kKYITabBarItemImageNameFormat, 3],
                           @"viewController" : viewControllerThree_},
                        
                         @{@"image"          : [NSString stringWithFormat:kKYITabBarItemImageNameFormat, 4],
                           @"viewController" : viewControllerOne_}];
    
    
//    self.tabBarItems = @[@{@"image"          : [NSString stringWithFormat:kKYITabBarItemImageNameFormat, 1],
//                           @"viewController" : viewControllerOne_},
//                         @{@"image"          : [NSString stringWithFormat:kKYITabBarItemImageNameFormat, 2],
//                           @"viewController" : viewControllerTwo_},
//                         @{@"image"          : [NSString stringWithFormat:kKYITabBarItemImageNameFormat, 3],
//                           @"viewController" : viewControllerThree_},
//                         @{@"image"          : [NSString stringWithFormat:kKYITabBarItemImageNameFormat, 4],
//                           @"viewController" : viewControllerFour_}];
    // Add a gesture signal on the first view
    UIImage * gestureImage = [UIImage imageNamed:kKYIArcTabGestureHelp];
    CGRect gestureImageViewFrame =
    (CGRect){{(kKYViewWidth - gestureImage.size.width) / 2.f,
        (kKYViewHeight - kKYTabBarHeight - gestureImage.size.height) / 2.f},
        gestureImage.size};
    UIImageView * gestureImageView = [[UIImageView alloc] initWithFrame:gestureImageViewFrame];
    [gestureImageView setImage:gestureImage];
    [gestureImageView setUserInteractionEnabled:YES];
    [viewControllerOne_.view addSubview:gestureImageView];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
