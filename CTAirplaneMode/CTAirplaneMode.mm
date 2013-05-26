#import "Cydeswitch.h"
#import "objc/Runtime.h"

@interface CTAirplaneMode : NSObject <Cydeswitch>
-(void)ringerHasBeenMuted; //When the ringer on the hardware is Orange-colored, it is "muted".
-(void)ringerHasBeenUnmuted;
@end

@interface SBTelephonyManager
+(id)sharedTelephonyManager;
-(void)setIsInAirplaneMode:(BOOL)enabled;
@end

@implementation CTAirplaneMode
-(void)ringerHasBeenMuted
{
	[[objc_getClass("SBTelephonyManager") sharedTelephonyManager] setIsInAirplaneMode:YES];
}

-(void)ringerHasBeenUnmuted
{
	[[objc_getClass("SBTelephonyManager") sharedTelephonyManager] setIsInAirplaneMode:NO];
}
@end