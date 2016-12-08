//
//  FBDAdjustAuthorityTools.m
//  NewMedSci
//
//  Created by feng on 16/4/29.
//  Copyright © 2016年 Bioon. All rights reserved.
//
/**
 *      @author 冯宝东
 *      这个单例类是为了判断系统的相册和相机对此应用是否打开了权限
 *
 */
#import "FBDAdjustAuthorityTools.h"
#import <AssetsLibrary/AssetsLibrary.h>
#import <AVFoundation/AVCaptureDevice.h>
#import <AVFoundation/AVMediaFormat.h>
static FBDAdjustAuthorityTools*sigleTone;
@implementation FBDAdjustAuthorityTools

/**
 *      @author 冯宝东
 *
 *      单列构造方法
 *
 *      @return 单列
 */
+(instancetype)defaultTools
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sigleTone=[[self alloc] init];
    });
    return sigleTone;
}

// 检测相机是否可用
-(BOOL)checkoutIphoneTakePhotosIsAvailable
{
    AVAuthorizationStatus authStatus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    if (authStatus == AVAuthorizationStatusRestricted || authStatus ==AVAuthorizationStatusDenied)
    {
        SHOW_ALERT(@"请到：设置－隐私－相机，确保相机权限已经打开！谢谢")
        return NO;
    }
    return YES;
}
// 检测相册是否可用
-(BOOL)checkoutIphoneLibrarysIsAvailable
{

    ALAuthorizationStatus author = [ALAssetsLibrary authorizationStatus];
    if (author == ALAuthorizationStatusRestricted || author ==ALAuthorizationStatusDenied){
        //无权限
        SHOW_ALERT(@"请到：设置－隐私－相册，确保相册权限已经打开！谢谢")
        return NO;
    }
    return YES;
}
// 检测麦克风是否可用
-(BOOL)checkoutIphoneTakeAudioIsAvailable
{
    AVAuthorizationStatus authStatus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeAudio];
    if (authStatus == AVAuthorizationStatusRestricted || authStatus ==AVAuthorizationStatusDenied)
    {
        SHOW_ALERT(@"请到：设置－隐私－麦克风，确保麦克风权限已经打开！谢谢")
        return NO;
    }
    return YES;
}

@end
