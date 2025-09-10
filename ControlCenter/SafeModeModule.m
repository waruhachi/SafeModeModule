#import "SafeModeModule.h"

@implementation SafeModeModule

- (UIImage *)iconGlyph {
	UIImageSymbolConfiguration *config = [UIImageSymbolConfiguration configurationWithPointSize:30 weight:UIImageSymbolWeightRegular];
	return [UIImage systemImageNamed:@"autostartstop.trianglebadge.exclamationmark" withConfiguration:config];
}

- (UIImage *)selectedIconGlyph {
	UIImageSymbolConfiguration *config = [UIImageSymbolConfiguration configurationWithPointSize:30 weight:UIImageSymbolWeightRegular];
	return [UIImage systemImageNamed:@"autostartstop.trianglebadge.exclamationmark" withConfiguration:config];
}

- (UIColor *)selectedColor {
	return [UIColor redColor];
}

- (BOOL)isSelected {
	return _selected;
}

- (void)setSelected:(BOOL)selected {
	_selected = selected;

	pid_t pid;
	const char *args[] = {"killall", "-SEGV", "SpringBoard", NULL};
	posix_spawn(&pid, jbroot("/usr/bin/killall"), NULL, NULL, (char *const *)args, NULL);
}

@end