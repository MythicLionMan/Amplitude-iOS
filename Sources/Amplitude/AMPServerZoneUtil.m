//
//  AMPServerZoneUtil.m
//  Copyright (c) 2021 Amplitude Inc. (https://amplitude.com/)
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

#import <Foundation/Foundation.h>
#import "AMPServerZone.h"
#import "AMPServerZoneUtil.h"
#import "AMPConstants.h"

@implementation AMPServerZoneUtil

+ (NSString *)getEventLogApi:(AMPServerZone)serverZone batchMode:(BOOL)batchMode {
    NSString *eventLogUrl = kAMPEventLogUrl;
    switch (serverZone) {
        case EU:
            eventLogUrl = kAMPEventLogEuUrl;
            break;
        case US:
            eventLogUrl = kAMPEventLogUrl;
            break;
            
        default:
            break;
    }
    return batchMode ? [eventLogUrl stringByAppendingString:kAMPBatchModeAPIPath] : eventLogUrl;
}

+ (NSString *)getDynamicConfigApi:(AMPServerZone)serverZone {
    NSString *dynamicConfigUrl = kAMPDyanmicConfigUrl;
    switch (serverZone) {
        case EU:
            dynamicConfigUrl = kAMPDyanmicConfigEuUrl;
            break;
        case US:
            dynamicConfigUrl = kAMPDyanmicConfigUrl;
            break;
            
        default:
            break;
    }
    return dynamicConfigUrl;
}

@end
