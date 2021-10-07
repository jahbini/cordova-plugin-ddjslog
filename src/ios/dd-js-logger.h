#import <Cordova/CDV.h>
#ifdef DEBUG
#define DDLogInfo(...) NSLog(@"%s(%p) %@", __PRETTY_FUNCTION__, self, [NSString stringWithFormat:__VA_ARGS__])
#else
#define DDLogInfo(...)
#endif
@interface DDJSLogger : CDVPlugin

- (void) logio:(CDVInvokedUrlCommand*)command;

@end
