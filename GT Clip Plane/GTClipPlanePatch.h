
@interface GTClipPlanePatch : QCPatch
{
	QCBooleanPort	*inputBypass;
	QCBooleanPort   *inputClipPlane0;
	QCNumberPort	*inputClipAX;
	QCNumberPort	*inputClipAY;
	QCNumberPort	*inputClipAZ;
	QCNumberPort	*inputClipAW;
	QCBooleanPort   *inputClipPlane1;
	QCNumberPort	*inputClipBX;
	QCNumberPort	*inputClipBY;
	QCNumberPort	*inputClipBZ;
	QCNumberPort	*inputClipBW;
	QCBooleanPort   *inputClipPlane2;
	QCNumberPort	*inputClipCX;
	QCNumberPort	*inputClipCY;
	QCNumberPort	*inputClipCZ;
	QCNumberPort	*inputClipCW;
	QCBooleanPort   *inputClipPlane3;
	QCNumberPort	*inputClipDX;
	QCNumberPort	*inputClipDY;
	QCNumberPort	*inputClipDZ;
	QCNumberPort	*inputClipDW;
	QCBooleanPort   *inputClipPlane4;
	QCNumberPort	*inputClipEX;
	QCNumberPort	*inputClipEY;
	QCNumberPort	*inputClipEZ;
	QCNumberPort	*inputClipEW;
	QCBooleanPort   *inputClipPlane5;
	QCNumberPort	*inputClipFX;
	QCNumberPort	*inputClipFY;
	QCNumberPort	*inputClipFZ;
	QCNumberPort	*inputClipFW;
}
+ (int)executionModeWithIdentifier:(id)fp8;
- (id)initWithIdentifier:(id)fp8;
+ (int)timeModeWithIdentifier:(id)fp8;


- (BOOL)execute:(QCOpenGLContext *)context time:(double)time arguments:(NSDictionary *)arguments;
@end