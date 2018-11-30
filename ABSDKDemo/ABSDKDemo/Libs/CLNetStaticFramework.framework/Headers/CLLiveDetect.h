//
//  CLLiveDetect.h
//  CLNetStaticFramework
//
//  Created by Leo on 2018/11/30.
//  Copyright © 2018 Leo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface CLLiveDetect : NSObject

/**
 活体检测接口
 
 @param viewController 当前VC
 @param complete 完成会跳
 */
+ (void)startLiveDetectWithViewControler:(UIViewController *)viewController complete:(void(^)(BOOL success, NSError *error))complete;

@end

NS_ASSUME_NONNULL_END
