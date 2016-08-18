//
//  MBProgressHUD+HY.h
//  Pods
//
//  Created by YCLZONE on 8/18/16.
//
//

#import <MBProgressHUD/MBProgressHUD.h>

@interface MBProgressHUD (HY)
+ (instancetype)showHUDAddedTo:(UIView *)view animated:(BOOL)animated text:(NSString *)text details:(NSString *)details;
+ (instancetype)showText:(NSString *)text details:(NSString *)details;

- (void)showTitle:(NSString *)title message:(NSString *)message hideAnimated:(BOOL)animated afterDelay:(NSTimeInterval)delay completionBlock:(MBProgressHUDCompletionBlock)completionBlock;

- (void)showMessage:(NSString *)message
    completionBlock:(MBProgressHUDCompletionBlock)completionBlock;

+ (void)showMessage:(NSString *)message;
+ (void)showMessage:(NSString *)message
    completionBlock:(MBProgressHUDCompletionBlock)completionBlock;
+ (void)showTitle:(NSString *)title message:(NSString *)message hideAnimated:(BOOL)animated afterDelay:(NSTimeInterval)delay completionBlock:(MBProgressHUDCompletionBlock)completionBlock;
@end
