//
//  CyberPlayerController.h
//  cyberplayer
//
//  Copyright Baidu.com All rights reserved.
//
#ifndef cyberplayer_CyberPlayerController_h
#define cyberplayer_CyberPlayerController_h

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#ifdef __cplusplus
#define CBP_EXTERN extern "C" __attribute__((visibility ("default")))
#else
#define CBP_EXTERN     extern __attribute__((visibility ("default")))
#endif

CBP_EXTERN NSString * const CyberPlayerLoadDidPreparedNotification;
CBP_EXTERN NSString * const CyberPlayerPlaybackDidFinishNotification;
CBP_EXTERN NSString * const CyberPlayerStartCachingNotification;
CBP_EXTERN NSString * const CyberPlayerGotCachePercentNotification;
CBP_EXTERN NSString * const CyberPlayerPlaybackErrorNotification;
CBP_EXTERN NSString * const CyberPlayerSeekingDidFinishNotification;
CBP_EXTERN NSString * const CyberPlayerPlaybackStateDidChangeNotification;
CBP_EXTERN NSString * const CyberPlayerMeidaTypeAudioOnlyNotification;

enum {
    CBPMovieScalingModeNone,       // 无缩放
    CBPMovieScalingModeAspectFit,  // 同比适配，某个方向会有黑边
    CBPMovieScalingModeAspectFill, // 同比填充，某个方向的显示内容可能被裁剪
    CBPMovieScalingModeAspect_5_4, // 5:4比例播放
    CBPMovieScalingModeAspect_4_3, // 4:3比例播放
    CBPMovieScalingModeAspect_16_9, // 16:9比例播放
    CBPMovieScalingModeFill         // 满屏填充，与原始视频比例不一致
};
typedef NSInteger CBPMovieScalingMode;

enum {
    CBPMoviePlaybackStateStopped, // 播放器处于停止状态
    CBPMoviePlaybackStatePlaying, // 播放器正在播放视频
    CBPMoviePlaybackStatePaused, // 播放器处于播放暂停状态，需要调用[start]([CyberPlayerController start])或[play]([CyberPlayerController play])重新回到播放状态
    CBPMoviePlaybackStateInterrupted, // 播放器由于内部原因中断播放
    CBPMoviePlaybackStatePrepared // 播放器完成对视频的初始化
};
typedef NSInteger CBPMoviePlaybackState;


enum{
    CBP_ERR_NO_INPUTFILE = 301,
    CBP_ERR_INVALID_INPUTFILE = 302,
    CBP_ERR_NO_SUPPORT_CODEC = 303,
    CBP_ERR_DISPLAY = 304,
    CBP_ERR_EIO = 305,
    CBP_ERR_UAS_ERRPARAM = 513,
    CBP_ERR_UAS_USER_NOT_EXIST = 543,
    CBP_ERR_UAS_USER_SIGN = 546
};
typedef NSInteger CBPErrorCode;

@interface CyberPlayerController : NSObject
- (id)initWithContentURL:(NSURL *)url;

- (id)initWithContentString:(NSString *)url;

- (void) prepareToPlay;

- (void) start;

- (void) play;
- (void) stop;
- (void) pause;
- (void) seekTo: (NSTimeInterval) newPos;
+ (void) setBAEAPIKey:(NSString*)ak SecretKey:(NSString*)sk;
- (NSString *) getSDKVersion;

@property(nonatomic, copy)      NSURL *contentURL;

@property(nonatomic, copy)      NSString *contentString;
@property(nonatomic, readonly)  UIView *view;

@property(nonatomic, readonly)  BOOL isPreparedToPlay;
@property(nonatomic, readonly)  CBPMoviePlaybackState playbackState;
@property(nonatomic)            CBPMovieScalingMode scalingMode;
@property(nonatomic)            NSTimeInterval currentPlaybackTime;
@property(nonatomic)            NSTimeInterval initialPlaybackTime;

@property(nonatomic, readonly)  int videoHeight;
@property(nonatomic, readonly)  int videoWidth;
@property(nonatomic, readonly)  CGSize naturalSize;
@property(nonatomic, readonly)  NSTimeInterval duration;
@property(nonatomic, readonly)  NSTimeInterval playableDuration;
@property(nonatomic)            BOOL shouldAutoplay;
@property(nonatomic)            BOOL shouldAutoClearRender;
@end
#endif
