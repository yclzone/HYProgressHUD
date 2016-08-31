//
//  HYViewController.m
//  HYProgressHUD
//
//  Created by yclzone on 08/18/2016.
//  Copyright (c) 2016 yclzone. All rights reserved.
//

#import "HYViewController.h"
#import "MBProgressHUD+HY.h"

@interface HYViewController ()

@end

@implementation HYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
//    static BOOL show = YES;
//    
//    [MBProgressHUD hy_showText:@"Note"
//                       details:@"Note details"
//                 indeterminate:show
//                        toView:self.view
//                hiddenanimated:YES
//                         delay:2
//               completionBlock:^{
//                   show = !show;
//                   
//                   NSLog(@"Done");
//               }];
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_LOW, 0), ^{
//        [MBProgressHUD hy_showText:@"TEXT" details:@"Details" hiddenAfterDelay:1 completionBlock:^{
//            NSLog(@"Done");
//        }];
        
//        [MBProgressHUD hy_showText:@"TEXT"];
        MBProgressHUD *hud = [MBProgressHUD hy_showText:@"TEXT" details:@"Details" indeterminate:YES toView:self.view animated:YES];
        
        sleep(2);
        
//        [hud hy_updateText:@"Wait" details:@"To be continued!"];
        hud.hy_text = @"Wait";
        hud.hy_details = @"To be continued!";
        
        sleep(2);
        
        [hud hy_updateText:@"Done" details:nil hideAnimated:YES afterDelay:1 completionBlock:^{
            NSLog(@"Done");
        }];
    });
    
    
    
    
}

@end
