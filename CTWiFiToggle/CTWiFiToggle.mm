#import "Cydeswitch.h"
#import "objc/Runtime.h"

@interface CTWiFiToggle : NSObject <Cydeswitch>
-(void)ringerHasBeenMuted; //When the ringer on the hardware is Orange-colored, it is "muted".
-(void)ringerHasBeenUnmuted;
@end

@interface SBWiFiManager
-(id)sharedInstance;
-(void)setWiFiEnabled:(BOOL)enabled;
@end

@implementation CTWiFiToggle
-(void)ringerHasBeenMuted
{
    [[objc_getClass("SBWiFiManager") sharedInstance] setWiFiEnabled:NO];
}

-(void)ringerHasBeenUnmuted
{
    [[objc_getClass("SBWiFiManager") sharedInstance] setWiFiEnabled:YES];
}
@end