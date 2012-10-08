#import <OpenGL/CGLMacro.h>
#import "GTClipPlanePatch.h"


@implementation GTClipPlanePatch : QCPatch

+ (BOOL)isSafe
{
	return YES;
}

+ (int)executionModeWithIdentifier:(id)fp8
{
	return kQCPatchExecutionModeConsumer;
}

+ (BOOL)allowsSubpatchesWithIdentifier:(id)fp8
{
	return YES;
}

+ (BOOL)supportsOptimizedExecutionForIdentifier:(id)identifier
{
	return YES;
}

+ (int)timeModeWithIdentifier:(id)fp8
{
	return 0;
}

- (id)initWithIdentifier:(id)fp8
{
	self=[super initWithIdentifier:fp8];

	if(self)
		
	{
		[inputBypass	setBooleanValue:FALSE];

		
		[inputClipPlane0	setBooleanValue:FALSE];

		[inputClipAX	setDoubleValue:0.];
		[inputClipAY	setDoubleValue:0.];
		[inputClipAZ	setDoubleValue:0.];
		[inputClipAW	setDoubleValue:0.];
		
		[inputClipPlane1	setBooleanValue:FALSE];

		[inputClipBX	setDoubleValue:0.];
		[inputClipBY	setDoubleValue:0.];
		[inputClipBZ	setDoubleValue:0.];
		[inputClipBW	setDoubleValue:0.];
		
		[inputClipPlane2	setBooleanValue:FALSE];
		
		[inputClipCX	setDoubleValue:0.];
		[inputClipCY	setDoubleValue:0.];
		[inputClipCZ	setDoubleValue:0.];
		[inputClipCW	setDoubleValue:0.];
		
		[inputClipPlane3	setBooleanValue:FALSE];
		
		[inputClipDX	setDoubleValue:0.];
		[inputClipDY	setDoubleValue:0.];
		[inputClipDZ	setDoubleValue:0.];
		[inputClipDW	setDoubleValue:0.];
		
		[inputClipPlane4	setBooleanValue:FALSE];
		
		[inputClipEX	setDoubleValue:0.];
		[inputClipEY	setDoubleValue:0.];
		[inputClipEZ	setDoubleValue:0.];
		[inputClipEW	setDoubleValue:0.];
		
		[inputClipPlane5	setBooleanValue:FALSE];

		[inputClipFX	setDoubleValue:0.];
		[inputClipFY	setDoubleValue:0.];
		[inputClipFZ	setDoubleValue:0.];
		[inputClipFW	setDoubleValue:0.];
		
	}
	

	return self;
}

- (id)attributes
{
	NSMutableDictionary *at = [[[super attributes] mutableCopy] autorelease];
	[at setObject:@"GT Clip Plane" forKey:@"name"];
	return at;
}

- (BOOL)execute:(QCOpenGLContext *)context time:(double)time arguments:(NSDictionary *)arguments
{
	//GLint oldMatrixMode;
	GLdouble eqn0[4] = {[inputClipAX doubleValue], [inputClipAY doubleValue], [inputClipAZ doubleValue], [inputClipAW doubleValue]};	
	GLdouble eqn1[4] = {[inputClipBX doubleValue], [inputClipBY doubleValue], [inputClipBZ doubleValue], [inputClipBW doubleValue]};		
	GLdouble eqn2[4] = {[inputClipCX doubleValue], [inputClipCY doubleValue], [inputClipCZ doubleValue], [inputClipCW doubleValue]};		
	GLdouble eqn3[4] = {[inputClipDX doubleValue], [inputClipDY doubleValue], [inputClipDZ doubleValue], [inputClipDW doubleValue]};	
	GLdouble eqn4[4] = {[inputClipEX doubleValue], [inputClipEY doubleValue], [inputClipEZ doubleValue], [inputClipEW doubleValue]};		
	GLdouble eqn5[4] = {[inputClipFX doubleValue], [inputClipFY doubleValue], [inputClipFZ doubleValue], [inputClipFW doubleValue]};		
	
	if([inputBypass booleanValue])
	{
		[self executeSubpatches:time arguments:arguments];
		return YES;
	}
	
	CGLContextObj cgl_ctx = [context CGLContextObj];
	
	
	glPushMatrix();
	
		if([inputClipPlane0 booleanValue])				
	{
		glEnable(GL_CLIP_PLANE0);
	}
	else
	{
		glDisable(GL_CLIP_PLANE0);		
	}
	glClipPlane (GL_CLIP_PLANE0, eqn0);

	if([inputClipPlane1 booleanValue])				
	{
		glEnable(GL_CLIP_PLANE1);
	}
	else
	{
		glDisable(GL_CLIP_PLANE1);		
	}
	glClipPlane (GL_CLIP_PLANE1, eqn1);

	
	if([inputClipPlane2 booleanValue])				
	{
		glEnable(GL_CLIP_PLANE2);
	}
	else
	{
		glDisable(GL_CLIP_PLANE2);		
	}
	glClipPlane (GL_CLIP_PLANE2, eqn2);

	
	if([inputClipPlane3 booleanValue])				
	{
		glEnable(GL_CLIP_PLANE3);
	}
	else
	{
		glDisable(GL_CLIP_PLANE3);		
	}
	glClipPlane (GL_CLIP_PLANE3, eqn3);

	
	if([inputClipPlane4 booleanValue])				
	{
		glEnable(GL_CLIP_PLANE4);
	}
	else
	{
		glDisable(GL_CLIP_PLANE4);		
	}
	glClipPlane (GL_CLIP_PLANE4, eqn4);

	
	if([inputClipPlane5 booleanValue])				
	{
		glEnable(GL_CLIP_PLANE5);
	}
	else
	{
		glDisable(GL_CLIP_PLANE5);		
	}
	glClipPlane (GL_CLIP_PLANE5, eqn5);

	
	
	[self executeSubpatches:time arguments:arguments];
	
	glDisable(GL_CLIP_PLANE0);
	glDisable(GL_CLIP_PLANE1);
	glDisable(GL_CLIP_PLANE2);
	glDisable(GL_CLIP_PLANE3);
	glDisable(GL_CLIP_PLANE4);
	glDisable(GL_CLIP_PLANE5);
	
	glPopMatrix();
	
	
	
	return YES;
}

@end

