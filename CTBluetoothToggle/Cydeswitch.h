@protocol Cydeswitch
@required
-(void)ringerHasBeenMuted; //When the ringer on the hardware is Orange-colored, it is "muted".
-(void)ringerHasBeenUnmuted;

@optional
-(NSNumber *)shouldBeMuted;
-(NSNumber *)shouldBeUnmuted;
-(void)ringerWillBeMuted;
-(void)ringerWillBeUnmuted;
@end