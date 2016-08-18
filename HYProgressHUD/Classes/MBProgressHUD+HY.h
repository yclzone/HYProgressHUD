//
//  MBProgressHUD+HY.h
//  Pods
//
//  Created by YCLZONE on 8/18/16.
//
//

#import <MBProgressHUD/MBProgressHUD.h>

@interface MBProgressHUD (HY)
+ (void)hy_showText:(NSString *)text
            details:(NSString *)details
      indeterminate:(BOOL)showIndeterminate
             toView:(UIView *)view
     hiddenanimated:(BOOL)animated
              delay:(NSTimeInterval)delay
    completionBlock:(MBProgressHUDCompletionBlock)completionBlock ;

+ (void)hy_showText:(NSString *)text
                    details:(NSString *)details
           hiddenAfterDelay:(NSTimeInterval)delay
            completionBlock:(MBProgressHUDCompletionBlock)completionBlock;

+ (void)hy_showText:(NSString *)text
   hiddenAfterDelay:(NSTimeInterval)delay
    completionBlock:(MBProgressHUDCompletionBlock)completionBlock;

+ (void)hy_showText:(NSString *)text;


#pragma mark - 手动
+ (instancetype)hy_showText:(NSString *)text
                    details:(NSString *)details
              indeterminate:(BOOL)showIndeterminate
                     toView:(UIView *)view
                   animated:(BOOL)animated;

- (void)hy_updateText:(NSString *)text
           details:(NSString *)details
      hideAnimated:(BOOL)animated
        afterDelay:(NSTimeInterval)delay
   completionBlock:(MBProgressHUDCompletionBlock)completionBlock;

- (void)hy_updateText:(NSString *)text
              details:(NSString *)details;
@end
