# NSString+FrenchDateFormater 

Convert your date easily.

## Usage

```
    NSString *dateIso = @"2013-04-15T19:24:49Z";
    [dateIso makeDateWithFormat:@"yyyy-MM-ddTHH:mm:ssZ"]; // return 15/04/2013
    
    NSString *dateIso = @"20140423";
    [dateIso makeDateWithFormat:@"YYYYMMDD"]; // return 23/04/2014
```
