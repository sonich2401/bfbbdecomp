#ifndef IMATH3_H
#define IMATH3_H
#include "../x/xVec3.h"
#include "../x/xMath3.h"
#include "../x/xVec3Inlines.h"
#include "../x/xCamera.h"
struct xIsect
{
	uint32 flags;
	float32 penned;
	float32 contained;
	float32 lapped;
	xVec3 point;
	xVec3 norm;
	float32 dist;
};
//#pragma GLOBAL_ASM("0x14fb80", "xVec3Length__FPC5xVec3")
//class xSphere{
//public:
//typedef struct xIsect;
//typedef struct xSphere;

//};
//extern "C" typedef struct xIsect;
//#include <math.h>
extern float32 xsqrt(float num);

float32 xVec3Length(const xVec3 *param_1);
   
void  iSphereIsectVec(const xSphere * o,const xVec3 * o1, xIsect * o2);
#endif