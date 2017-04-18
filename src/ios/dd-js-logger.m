#import "dd-js-logger.h"

@implementation DDJSLogger

- (void)logio:(CDVInvokedUrlCommand*)command
{

    NSString* data = [[command arguments] objectAtIndex:0][0];
    
    DDLogInfo (@"JS - %@", data);
   /*
   [self.commandDelegate sendPluginResult:data callbackId:command.callbackId];
   */
}

@end
