//
//  DataDrivenInput.h
//  EpocTestFramework
//
//  Created by satyavrat-mac on 09/04/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataDrivenInput : NSObject
-(NSArray*)readCSVFile:(NSString*)filePath;
-(NSArray*)readPSVFile:(NSString*)filePath;
@end
