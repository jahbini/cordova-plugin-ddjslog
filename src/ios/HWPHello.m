#import "HWPRedirect.h"

@implementation HWPRedirect

- (void)stderr:(CDVInvokedUrlCommand*)command
{

    NSString* name = [[command arguments] objectAtIndex:0];
    NSString* msg = [NSString stringWithFormat: @"/Documents/", %@", name];

    CDVPluginResult* result = [CDVPluginResult
                               resultWithStatus:CDVCommandStatus_OK
                               messageAsString:msg];

    
     NSArray *allPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
     NSString *documentsDirectory = [allPaths objectAtIndex:0];
     NSString *pathForLog = [documentsDirectory stringByAppendingPathComponent:@"yourFile.txt"];
     NSString *pathForLog2 = [documentsDirectory stringByAppendingPathComponent:@name];

     freopen([pathForLog cStringUsingEncoding:NSASCIIStringEncoding],"a+",stderr);
     
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

@end
