//
//  MBProgressHUD+HY.m
//  Pods
//
//  Created by YCLZONE on 8/18/16.
//
//

#import "MBProgressHUD+HY.h"

@implementation MBProgressHUD (HY)

#pragma mark - 自动消失


/** 自动消失 */
+ (void)hy_showText:(NSString *)text
            details:(NSString *)details
      indeterminate:(BOOL)showIndeterminate
             toView:(UIView *)view
     hiddenanimated:(BOOL)animated
              delay:(NSTimeInterval)delay
    completionBlock:(MBProgressHUDCompletionBlock)completionBlock {
    dispatch_async(dispatch_get_main_queue(), ^{
        MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
        hud.mode = (showIndeterminate ? MBProgressHUDModeIndeterminate : MBProgressHUDModeText);
        hud.label.text = text;
        hud.detailsLabel.text = details;
        hud.completionBlock = completionBlock;
        [hud hideAnimated:animated afterDelay:delay];
    });
}

/** 纯文字 */
+ (void)hy_showText:(NSString *)text
            details:(NSString *)details
   hiddenAfterDelay:(NSTimeInterval)delay
    completionBlock:(MBProgressHUDCompletionBlock)completionBlock {
    
    [self hy_showText:text
                     details:details
               indeterminate:NO
                      toView:[UIApplication sharedApplication].keyWindow
              hiddenanimated:YES
                       delay:delay
             completionBlock:completionBlock];
}

+ (void)hy_showText:(NSString *)text
   hiddenAfterDelay:(NSTimeInterval)delay
    completionBlock:(MBProgressHUDCompletionBlock)completionBlock {
    [self hy_showText:text details:nil hiddenAfterDelay:delay completionBlock:completionBlock];
}

+ (void)hy_showText:(NSString *)text {
    [self hy_showText:text details:nil hiddenAfterDelay:1 completionBlock:nil];
}

#pragma mark - 控制消失
+ (instancetype)hy_showText:(NSString *)text
            details:(NSString *)details
      indeterminate:(BOOL)showIndeterminate
             toView:(UIView *)view
           animated:(BOOL)animated {
//    NSLog(@"%s -- %@", __FUNCTION__, [NSThread currentThread]);
    
    MBProgressHUD *hud = [[self alloc] initWithView:view];
    hud.removeFromSuperViewOnHide = YES;
    hud.mode = (showIndeterminate ? MBProgressHUDModeIndeterminate : MBProgressHUDModeText);
    
    dispatch_async(dispatch_get_main_queue(), ^{
        hud.label.text = text;
        hud.detailsLabel.text = details;
        [view addSubview:hud];
        [hud showAnimated:animated];
    });
    
    return hud;
}

- (void)hy_updateText:(NSString *)text
           details:(NSString *)details
      hideAnimated:(BOOL)animated
        afterDelay:(NSTimeInterval)delay
   completionBlock:(MBProgressHUDCompletionBlock)completionBlock {
//    NSLog(@"%s -- %@", __FUNCTION__, [NSThread currentThread]);
    self.completionBlock = completionBlock;

    dispatch_async(dispatch_get_main_queue(), ^{
        /** 必须在主线程，否则无效 */
        self.label.text = text;
        self.detailsLabel.text = details;
        [self hideAnimated:animated afterDelay:delay];
    });
}

- (void)hy_updateText:(NSString *)text
              details:(NSString *)details {
    dispatch_async(dispatch_get_main_queue(), ^{
        /** 必须在主线程，否则无效 */
        self.label.text = text;
        self.detailsLabel.text = details;
    });
}

@end
