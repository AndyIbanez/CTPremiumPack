#import "Cydeswitch.h"
#import "objc/Runtime.h"

@interface CTBluetoothToggle : NSObject <Cydeswitch>
-(void)ringerHasBeenMuted; //When the ringer on the hardware is Orange-colored, it is "muted".
-(void)ringerHasBeenUnmuted;
@end

@interface BluetoothManager
-(BOOL)setEnabled:(BOOL)enabled;
-(BOOL)setPowered:(BOOL)powered;
+(id)sharedInstance;
@end

@implementation CTBluetoothToggle
-(void)ringerHasBeenMuted
{
	[(BluetoothManager *)[objc_getClass("BluetoothManager") sharedInstance] setEnabled:NO];
	[(BluetoothManager *)[objc_getClass("BluetoothManager") sharedInstance] setPowered:NO];
}

-(void)ringerHasBeenUnmuted
{
	[(BluetoothManager *)[objc_getClass("BluetoothManager") sharedInstance] setEnabled:YES];
	[(BluetoothManager *)[objc_getClass("BluetoothManager") sharedInstance] setPowered:YES];
}
@end