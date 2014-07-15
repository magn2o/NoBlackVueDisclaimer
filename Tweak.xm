@interface PSAlertView : NSObject
@end

@interface PSAppDelegate : UIResponder
@property (nonatomic,retain) PSAlertView *tAlertView;
-(void)alertView:(id)arg1 clickedButtonAtIndex:(int)arg2;
@end

%hook PSAppDelegate
- (void)_ShowDisclaimer
{
    [self alertView:self.tAlertView clickedButtonAtIndex:0];
}
%end