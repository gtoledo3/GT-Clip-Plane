//  Test.h
//  Test
//
//  Created by George Toledo on 2/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.

#import "GTClipPlanePrincipal.h"
#import "GTClipPlanePatch.h"

@interface GTClipPlanePrincipal : NSObject <GFPlugInRegistration>
+(void)registerNodesWithManager:(QCNodeManager*)manager;
@end
