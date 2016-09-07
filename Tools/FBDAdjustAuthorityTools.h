//
//  FBDAdjustAuthorityTools.h
//  NewMedSci
//
//  Created by feng on 16/4/29.
//  Copyright © 2016年 Bioon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FBDAdjustAuthorityTools : NSObject
/**
 *      @author 冯宝东
 *
 *      单列构造方法
 *
 *      @return 单列
 */
+(instancetype)defaultTools;
// 检测相机是佛可用
-(BOOL)checkoutIphoneTakePhotosIsAvailable;
// 检测相册是否可用
-(BOOL)checkoutIphoneLibrarysIsAvailable;
// 检测麦克风是否可用
-(BOOL)checkoutIphoneTakeAudioIsAvailable;
@end
