//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

/**
 
 * Implement your methods here.
 
 */

-(NSString *)stringByReversingString:(NSString *)string{
    
    NSString *result = @"";
    for (NSUInteger i = [string length]; i>0; i--) {
        unichar c = [string characterAtIndex:i-1];
        result= [result stringByAppendingString:[NSString stringWithFormat:@"%C",c]];
        
    }
    
    
    return result;
}

-(BOOL)stringIsPalindrome:(NSString *)string{
    
    NSArray *punctuations = @[@".", @",", @"!", @"?", @":", @";"];
    
    NSString *withoutPunctuation = [string copy];
    for (NSUInteger i = 0; i<[punctuations count]; i++) {
        NSString *punctuation = punctuations[i];
        withoutPunctuation = [withoutPunctuation stringByReplacingOccurrencesOfString:punctuation withString:@""];
        
    }
    
    
    NSString *spaceless = [withoutPunctuation stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSString *lowercase = [spaceless lowercaseString];
    NSString *reversed = [self stringByReversingString:lowercase];
    
    
    
    BOOL isEqualToReversed = [lowercase isEqualToString:reversed];
    
    return isEqualToReversed;
    
}

@end
