// Created on September 2, 2019 at 3:25 am by iKilledAppl3.
//If you use any code please credit me or donate!
// Anyways have fun! and God bless!
// mtac8 please "steal" this for Okapi!

#import <UIKit/UIKit.h>

%hook UINavigationBar
-(BOOL)prefersLargeTitles {
      return FALSE;
}

-(void)setPrefersLargeTitles:(BOOL)arg1 {
	arg1 = FALSE;
}


// This is a nasty way of doing this but it should work >:).
-(void)layoutSubviews {
	%orig;
	if (@available(iOS 11, *)) {
	self.prefersLargeTitles = NO;
	}
}
%end

%hook UINavigationBarItem
-(NSInteger)largeTitleDisplayMode {
	return 2;
}
%end
