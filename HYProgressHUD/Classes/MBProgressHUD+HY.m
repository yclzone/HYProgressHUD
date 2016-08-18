//
//  MBProgressHUD+HY.m
//  Pods
//
//  Created by YCLZONE on 8/18/16.
//
//

#import "MBProgressHUD+HY.h"

@implementation MBProgressHUD (HY)
+ (instancetype)showHUDAddedTo:(UIView *)view animated:(BOOL)animated text:(NSString *)text details:(NSString *)details {
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:animated];
    hud.label.text = text;
    hud.detailsLabel.text = details;
    return hud;
}

+ (instancetype)showText:(NSString *)text details:(NSString *)details {
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:[UIApplication sharedApplication].keyWindow animated:YES];
    hud.label.text = text;
    hud.detailsLabel.text = details;
    return hud;
}


- (void)showTitle:(NSString *)title message:(NSString *)message hideAnimated:(BOOL)animated afterDelay:(NSTimeInterval)delay completionBlock:(MBProgressHUDCompletionBlock)completionBlock {
    self.label.text = title;
    self.detailsLabel.text = message;
    self.completionBlock = completionBlock;
    [self hideAnimated:animated afterDelay:delay];
}

- (void)showMessage:(NSString *)message afterDelay:(NSTimeInterval)delay
    completionBlock:(MBProgressHUDCompletionBlock)completionBlock {
    [self showTitle:nil message:message hideAnimated:YES afterDelay:delay completionBlock:completionBlock];
}

- (void)showMessage:(NSString *)message
    completionBlock:(MBProgressHUDCompletionBlock)completionBlock {
    [self showMessage:message afterDelay:1 completionBlock:completionBlock];
}

- (void)showMessage:(NSString *)message {
    self.detailsLabel.text = message;
}

+ (void)showMessage:(NSString *)message
    completionBlock:(MBProgressHUDCompletionBlock)completionBlock {
    MBProgressHUD *hud = [self HUDForView:[UIApplication sharedApplication].keyWindow];
    [hud showMessage:message completionBlock:completionBlock];
}

+ (void)showMessage:(NSString *)message {
    MBProgressHUD *hud = [self HUDForView:[UIApplication sharedApplication].keyWindow];
    [hud showMessage:message];
}

+ (void)showTitle:(NSString *)title message:(NSString *)message hideAnimated:(BOOL)animated afterDelay:(NSTimeInterval)delay completionBlock:(MBProgressHUDCompletionBlock)completionBlock {
    MBProgressHUD *hud = [self HUDForView:[UIApplication sharedApplication].keyWindow];
    hud.label.text = title;
    hud.detailsLabel.text = message;
    hud.completionBlock = completionBlock;
    [hud hideAnimated:animated afterDelay:delay];
}

@end
