//
//  NSString+FrenchDateFormater.m
//  TimerWithBlock
//
//  Created by Benjamin SENECHAL on 20/06/2014.
//  Copyright (c) 2014 Benjamin SENECHAL. All rights reserved.
//

#import "NSString+FrenchDateFormater.h"

@implementation NSString (FrenchDateFormater)

- (NSString *)makeDateWithFormat:(NSString *)format{
    if ([format isEqual:@"yyyy-MM-ddTHH:mm:ssZ"]) {
        NSRange year = NSMakeRange(0, 4);
        NSRange month = NSMakeRange(5, 2);
        NSRange day = NSMakeRange(8, 2);
        return [NSString stringWithFormat: @"%@/%@/%@", [self substringWithRange:day], [self substringWithRange:month], [self substringWithRange:year]];
    } else if ([format isEqual:@"YYYYMMDD"]) {
        NSRange year = NSMakeRange(0, 4);
        NSRange month = NSMakeRange(4, 2);
        NSRange day = NSMakeRange(6, 2);
        return [NSString stringWithFormat: @"%@/%@/%@", [self substringWithRange:day], [self substringWithRange:month], [self substringWithRange:year]];
    } else if ([format isEqual:@"YYYYMM"]) {
        NSRange year = NSMakeRange(0, 4);
        NSRange month = NSMakeRange(4, 2);
        return [NSString stringWithFormat: @"%@/%@/%@", [self substringWithRange:month], [self substringWithRange:year]];
    } else {
        @"Not yet supported";
    }
    return [[NSString alloc] init];
}

@end
