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
    if ([format isEqual:@"yyyy-MM-ddTHH:mm:ssZ"]){
        NSArray *myWords = [self componentsSeparatedByString:@"T"];
        NSString *date = [myWords objectAtIndex:0];
        NSArray *myDate = [date componentsSeparatedByString:@"-"];
        NSString *a = [myDate objectAtIndex:0];
        NSString *m = [myDate objectAtIndex:1];
        NSString *j = [myDate objectAtIndex:2];
        return [NSString stringWithFormat: @"%@/%@/%@", j, m,a];
    }else if ([format isEqual:@"YYYYMMDD"])
    {
        NSRange year = NSMakeRange(0, 4);
        NSRange month = NSMakeRange(4, 2);
        NSRange day = NSMakeRange(6, 2);
        return [NSString stringWithFormat: @"%@/%@/%@", [self substringWithRange:day], [self substringWithRange:month], [self substringWithRange:year]];
    }else{
        return @"Format not yet supported";
    }
    return @"";
}

@end
