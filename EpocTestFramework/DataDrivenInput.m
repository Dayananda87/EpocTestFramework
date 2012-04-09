//
//  DataDrivenInput.m
//  EpocTestFramework
//
//  Created by satyavrat-mac on 09/04/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DataDrivenInput.h"

@implementation DataDrivenInput


-(NSArray*)readCSVFile:(NSString*)filePath{
    if([[NSFileManager defaultManager] fileExistsAtPath:filePath]){
        NSData *rawData = [NSData dataWithContentsOfFile:filePath];
        NSString *valueString = [[NSString alloc] initWithData:rawData encoding:NSUTF8StringEncoding];
        NSArray *delimitedArray = [valueString componentsSeparatedByString:@","];
        return delimitedArray;
    }    
    return nil;
}

-(NSArray*)readPSVFile:(NSString*)filePath{
    if([[NSFileManager defaultManager] fileExistsAtPath:filePath]){
        NSData *rawData = [NSData dataWithContentsOfFile:filePath];
        NSString *valueString = [[NSString alloc] initWithData:rawData encoding:NSUTF8StringEncoding];
        NSArray *delimitedArray = [valueString componentsSeparatedByString:@"|"];
        return delimitedArray;
    }    
    return nil;
}
@end
