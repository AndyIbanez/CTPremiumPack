#import "Cydeswitch.h"
#import "objc/Runtime.h"

@interface CTDTD : NSObject <Cydeswitch>
-(void)ringerHasBeenMuted; //When the ringer on the hardware is Orange-colored, it is "muted".
-(void)ringerHasBeenUnmuted;
@end

@interface BBSettingsGateway : NSObject
- (void)setBehaviorOverrideStatus:(BOOL)enabled;
- (void)setActiveBehaviorOverrideTypesChangeHandler:(void (^)(BOOL))block;
@end

@interface SBStatusBarDataManager : NSObject
+ (id)sharedDataManager;
- (void)setStatusBarItem:(int)arg1 enabled:(BOOL)arg2;
@end

@class BBSettingsGateway;
@implementation CTDTD
-(void)ringerHasBeenMuted
{
	BBSettingsGateway *bbGateway = [[objc_getClass("BBSettingsGateway") alloc] init];
	[bbGateway setBehaviorOverrideStatus:YES];
	[[objc_getClass("SBStatusBarDataManager") sharedDataManager] setStatusBarItem:1 enabled:YES];
	[bbGateway release];
}

-(void)ringerHasBeenUnmuted
{
	BBSettingsGateway *bbGateway = [[objc_getClass("BBSettingsGateway") alloc] init];
	[bbGateway setBehaviorOverrideStatus:NO];
	[[objc_getClass("SBStatusBarDataManager") sharedDataManager] setStatusBarItem:1 enabled:NO];
	[bbGateway release];
}
@end