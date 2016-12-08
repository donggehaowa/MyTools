//
//  FBDAdjustAuthorityTools.h
//  NewMedSci
//
//  Created by feng on 16/4/29.
//  Copyright © 2016年 Bioon. All rights reserved.
//
//对话框
#define SHOW_ALERT(msg) UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"温馨提醒" message:msg delegate:nil cancelButtonTitle:nil otherButtonTitles:@"确定", nil];\
[alert show];


#define SHOW_ALERTdiss(msg) UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"温馨提示" message:msg delegate:nil cancelButtonTitle:nil otherButtonTitles:nil, nil];\
[alert show];\
dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{\
[alert dismissWithClickedButtonIndex:0 animated:YES];\
});


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
