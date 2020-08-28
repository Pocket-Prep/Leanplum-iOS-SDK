//
//  LPRegisterForPushMessageTemplate.m
//  LeanplumSDK-iOS
//
//  Created by Mayank Sanganeria on 2/7/20.
//  Copyright © 2020 Leanplum. All rights reserved.
//

#import "LPRegisterForPushMessageTemplate.h"
#import "LPPushMessageTemplate.h"

@implementation LPRegisterForPushMessageTemplate

+(void)defineAction
{
    [Leanplum defineAction:LPMT_REGISTER_FOR_PUSH
                    ofKind:kLeanplumActionKindAction
             withArguments:@[]
             withResponder:^BOOL(LPActionContext *context) {

        LPRegisterForPushMessageTemplate *template = [[LPRegisterForPushMessageTemplate alloc] init];
        
        if ([template shouldShowPushMessage]) {
            [template showNativePushPrompt];
            // Will count View event
            return YES;
        } else {
            return NO;
        }
        
        return YES;
    }];
}

@end