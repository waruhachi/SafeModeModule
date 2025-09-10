#import <ControlCenterUIKit/CCUIToggleModule.h>
#import <UIKit/UIKit.h>
#import <roothide.h>
#import <spawn.h>

typedef struct CCUILayoutSize {
	NSUInteger width;
	NSUInteger height;
} CCUILayoutSize;

@interface SafeModeModule : CCUIToggleModule {
	BOOL _selected;
}

@end