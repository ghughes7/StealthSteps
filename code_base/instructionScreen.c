
//{{BLOCK(instructionScreen)

//======================================================================
//
//	instructionScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 214 tiles (t|f reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 6848 + 2048 = 9408
//
//	Time-stamp: 2014-12-01, 08:42:44
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

const unsigned short instructionScreenTiles[3424] __attribute__((aligned(4)))=
{
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0x4D44,0x54DD,0x0500,0x004D,0x0011,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xD4CC,0xDDDD,0xC000,0xDDDD,0x003F,0xDDD5,

	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0x54DD,0xDC50,0x05DD,0xC005,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xCDDD,0xD4C5,0x00DD,0x4000,0x804D,0xC03B,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0x4DDD,0xDDDD,0x04DD,0xDDDD,0x05DD,0xDDDD,0x00DD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xD44C,0xDDDD,0x4000,0xDDDD,0x4083,0xDDDD,0xC03E,0xDDDD,

	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0x505C,0xCDDD,0x0000,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDD4,0x505C,0xCDD5,0x0000,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDD4,0xDDDD,0xDDD5,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0x005C,0xCDDD,0x0000,

	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0x0000,0x5000,0x0000,0x0000,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0x54DD,0xDDDD,0x004D,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0x0000,0xCD45,0x0000,0x5500,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0x505C,0xDDD4,0x0000,0xDDD5,0x0EB0,0xDDD0,

	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0x5DDD,0xDDDD,0x04DD,0xDDDD,0x04DD,0xDDDD,0x04DD,
	0x30CD,0x001E,0x804D,0x008E,0x00DD,0x00BE,0x054D,0x85EB,
	0x5000,0xEEEF,0xEB85,0x1BEE,0x36E8,0x06B1,0x0085,0x1E30,
	0x5BE3,0xD450,0x6E80,0x5005,0xE800,0x058B,0xEEEB,0x8EEE,
	0x5836,0xEB10,0x0000,0xE100,0xC000,0xE004,0x0080,0xE800,
	0x00DD,0x50BE,0x104D,0xC08E,0x8040,0xC08E,0x8050,0x001E,
	0x3001,0x061E,0x3003,0x0BFE,0x300F,0x01EE,0x8008,0x50BE,

	0x804D,0x408E,0x804D,0x003E,0x104D,0x003E,0x104C,0x003E,
	0x00D5,0x50FE,0x00D5,0xC0FE,0x00DC,0xC0FE,0x50DD,0xC03E,
	0x0005,0x0000,0x0000,0x0000,0xEEE3,0xEEEE,0x8881,0xBE88,
	0x0000,0x3E10,0x4444,0x8E10,0x4DDD,0xEE80,0xCDDD,0x8E30,
	0x003E,0x0000,0x003E,0x0000,0xEEEE,0xEEEE,0x8888,0x8888,
	0x0000,0x0000,0x0000,0x0000,0xEEEE,0x06EE,0x8888,0x06B8,
	0xD450,0xDDDD,0xD500,0xDDDD,0x401E,0xDDDD,0xD508,0xDDDD,
	0xD400,0x05DD,0xDD45,0x005D,0xDDD0,0x600D,0xDDD0,0xF05D,

	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0x0000,0x0000,0x0000,0x0000,0xEEEE,0xEEEE,0x3333,0x3333,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0x0000,0x4500,0x0000,0x0000,0xEEEE,0x08EE,0x3333,0x0133,
	0x5DDD,0x0EB0,0x5DDD,0x0EB0,0x5DDD,0x0EB0,0x5DDD,0x0EB0,
	0x5DDD,0x0EB0,0x5DDD,0x0EB0,0x5DD4,0xEEB0,0x5DD4,0x3EB0,
	0x5DD0,0x0EB0,0x5DD0,0x0EB0,0x5DD0,0x0EB0,0x5DD0,0x0EB0,
	0x0000,0x0EB0,0x0000,0x0EB0,0xEEEE,0x0EEE,0x3333,0x0E63,

	0xDDD0,0xDDDD,0xDDD0,0xDDDD,0xCDD0,0x5005,0x0040,0x0000,
	0x8000,0x6EEB,0xE300,0xB88B,0xBE10,0x0000,0x8E30,0x0CC0,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0x05DC,0xDD50,0x0000,0x5500,
	0x6008,0x000E,0xF03E,0x001E,0x81EB,0x003E,0x0FE8,0x00BE,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0x5005,0x05DD,0x0000,0x0055,
	0x0660,0x6000,0x1EE1,0xE100,0x3E63,0xE300,0x6BF6,0x6B00,
	0x5DDD,0xEEB0,0xCDDD,0x3380,0xDD50,0x0000,0xD500,0x5C4D,
	0xD006,0x5DDD,0xD503,0x5DDD,0xD408,0x5DDD,0xDD00,0x5DDD,

	0xEEEE,0x0EEE,0x3E63,0x0333,0x0EB0,0x0000,0x0EB0,0x4CC0,
	0x0EB0,0xCDD0,0x0EB0,0x04D0,0x0EB0,0x0CD0,0x0EB0,0x05D0,
	0xDDD0,0xDDDD,0xDDD5,0xDDDD,0x0544,0x4500,0x000C,0x0000,
	0x6300,0x536E,0xFEB0,0xBEF8,0x08E3,0xE800,0x00E6,0xE004,
	0xDDDD,0x30CD,0xDDDD,0xB05D,0xDDDD,0xB05D,0xDDD5,0xB05D,
	0xDDC0,0xB05D,0xD400,0xB05D,0xDC03,0xB05D,0xD506,0xB05D,
	0xEEE6,0x501B,0x388E,0x01EE,0x000E,0x0BE1,0x500E,0x0E60,
	0x500E,0x0EB0,0x000E,0x0BE5,0x100E,0x08EB,0xEEEE,0x008E,

	0x0EB0,0xDDD0,0x0EB0,0xDDD0,0x0EB0,0x5C40,0x0EB0,0x0000,
	0x0EB0,0x6350,0x0EB0,0x3610,0x0EB0,0x0000,0x0EB0,0x0000,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xC500,0x05CD,0x0000,0x0005,
	0x1BEE,0xE600,0xE638,0xE301,0xE100,0xE103,0xE881,0xB00B,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0x4DD5,0xC505,0x5D50,0x0000,
	0x0405,0x0BE5,0x0C08,0x08E8,0x050B,0x00EB,0x501E,0x50FE,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDC,0xDDDD,
	0xDDD5,0xDDDD,0xDDDC,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,

	0xDDDD,0x5DDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0x5000,0x8E10,0xDD4D,0xB600,0xDDDD,0xEF05,0xDDDD,0xE804,
	0xDDDD,0xE50D,0xDDDD,0x600D,0xDDDD,0xF05D,0xDDDD,0x104D,
	0x36E1,0x6E38,0xEB80,0x536E,0x0000,0x0000,0x0508,0x4500,
	0xDC03,0xDDDD,0xD506,0xDDDD,0xD05E,0xDDDD,0xD501,0xDDDD,
	0x1000,0xC03E,0x0550,0x4058,0x04D5,0x4500,0xDDDD,0x0544,
	0xDDDD,0x0004,0xDDDD,0x6804,0xDDDD,0x6F0C,0xDDDD,0x0004,

	0x80CD,0x408E,0xB00D,0xD05E,0xE800,0xD50F,0x6E80,0xD405,
	0x16E3,0x4D50,0x05BE,0x04D5,0x5008,0x0CDD,0xDC00,0x04DD,
	0x5DDD,0x06B0,0x04DD,0x03E1,0x00DD,0x05EF,0x8054,0x503E,
	0xE100,0x5006,0x6E30,0x0C05,0x5BE3,0x0C50,0x0080,0x04D5,
	0x0000,0x0BB0,0x544C,0x0B60,0x0DD4,0x0FE0,0x0DDD,0x03E5,
	0x0000,0x08E8,0x0005,0x05EF,0xEEEF,0x503E,0x8885,0x4008,
	0xDDD5,0x004D,0xDDD5,0xC4DD,0xDDDC,0xDDDD,0xDDDC,0xDDDD,
	0xDDD4,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,

	0x0000,0x0000,0xCCCC,0xCCCC,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0x0000,0x5000,0xCCCC,0xD4CC,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0x5DDD,0x0EB0,0x5DDD,0x0EB0,0x5DDD,0x0EB0,0x5DDD,0x0EB0,
	0x5DDD,0x0EB0,0x5DDD,0x0EB0,0xCDDD,0x0000,0xDDDD,0x505C,
	0x0000,0x0EB0,0x5CC0,0x0EB0,0x5DD0,0x0EB0,0x5DD0,0x0EB0,
	0x5DD0,0x0EB0,0x5DD0,0x0EB0,0xCDD5,0x0000,0xDDD4,0x505C,

	0x0EB0,0x0DD0,0x0EB0,0x0DD0,0x8EF0,0x0CC0,0xBE10,0x0000,
	0xE300,0x6886,0x8000,0xBEEB,0x0045,0x0000,0xCDD4,0x5005,
	0x0BE0,0x10EB,0x0BE0,0x38E8,0x03E8,0x63E5,0x01EB,0xE660,
	0x503E,0xEE30,0x4008,0xFE10,0xD400,0x0005,0xDDDC,0x5054,
	0xE88E,0xFE51,0xE10E,0x8E83,0x600B,0x0E3B,0x3008,0x0F6E,
	0x1000,0x08EE,0x0050,0x00E6,0x0540,0x5000,0x5DD4,0xD500,
	0xDD50,0x5DDD,0xDD40,0x5DDD,0xDDD0,0x5DDD,0xDDD5,0x5DDD,
	0xDDD4,0x5DDD,0xDDDD,0x5DDD,0xDDDD,0xCDDD,0xDDDD,0xDDDD,

	0x0EB0,0x00D0,0x0EB0,0x00D0,0x0EB0,0x05D0,0x0EB0,0x0CD0,
	0x0EB0,0x04D0,0x0EB0,0xCDD0,0x0000,0xDDD5,0x505C,0xDDD4,
	0x50BE,0xB05D,0x50BE,0xB05D,0x00E6,0xE004,0x03E3,0xE300,
	0xFEB0,0xBEB8,0x6350,0x036E,0x0005,0x0000,0x054D,0x4C50,
	0xD00E,0xB05D,0xD00E,0xB05D,0xD506,0xB05D,0xDC03,0xB05D,
	0xD400,0xB05D,0xDDC0,0xB05D,0xDDDC,0x00CD,0xDDDD,0x5CDD,
	0x833E,0x5005,0x000E,0x5450,0x400E,0x5DDD,0xD00E,0x5DDD,
	0xD00E,0x5DDD,0xD00E,0x5DDD,0xD500,0xCDDD,0xD450,0xDDDD,

	0x0EB0,0x6800,0x0EB0,0xBE80,0x0EB0,0x06E0,0x0EB0,0x06E0,
	0x0EB0,0xFEB0,0x0EB0,0xEF50,0x0000,0x0005,0x505C,0x0544,
	0xEEEE,0x800B,0xE058,0x000B,0xE000,0x050B,0xE800,0x050B,
	0xEE38,0x550B,0xB8BE,0xC506,0x0000,0x0C00,0x5C50,0x00C5,
	0x803E,0x408E,0xB06E,0xD006,0xE1E3,0xD503,0xE6E1,0xD401,
	0xBE60,0xDD50,0x8E30,0xDDC0,0x0660,0xDDD0,0x08E3,0xDDD5,
	0xDDDD,0x05DD,0xDDDD,0x4DDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,

	0xD450,0xDDDD,0xDDD4,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0x5C4D,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDC,0x4DDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0x4000,0x5DDD,0xDD4D,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,

	0x0000,0xD400,0x444D,0xDDD4,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0x3004,0xDDDD,0xE30C,0xDDDD,0x8104,0xDDDD,0x005D,
	0xDDDD,0x44DD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0x00BE,0xDDD4,0xC05B,0xDDDD,0xD500,0xDDDD,0xDDC0,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDC0C,
	0xDDDD,0x48E0,0x4DDD,0x5BE8,0x5DDD,0x0EFB,0x0DDD,0x1E5E,

	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xCC4D,0x0000,
	0x1FCD,0xEEE6,0x0614,0xFB00,0xC3B5,0x0E14,0x4865,0xC3B5,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDACC,0xDDDD,
	0xDC31,0xDDDD,0x4160,0xDDDD,0x5B3C,0xDDDD,0x5684,0x00CD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDC0C,0xDDDD,0x08E5,0xDDDC,0x6B1C,0x4DC8,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0x054D,0xDDC0,
	0xEB54,0xDC3E,0x0FB5,0x00C0,0x40E0,0xEE0D,0xD0E1,0x860D,

	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0x00CC,0xC0CC,0xEE8F,0x1E08,0x55E0,0x1E0E,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0x0CDD,
	0xDDDD,0xE0DD,0xCC0C,0xE000,0x50E1,0xEBE6,0xB0E1,0xE003,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDC,0xDDDD,
	0xDD41,0xDDDD,0x4501,0xDDDD,0x5BEE,0xDDDD,0x5E08,0xDDDD,
	0x84DD,0x3EEE,0xFCDD,0x680F,0xE0DD,0xE048,0x0CDD,0x0CDC,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,

	0x41E0,0xA0E1,0x58B0,0x003B,0x5B80,0xEEEE,0x1E0C,0x0000,
	0xC0CD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0x0E14,0xEE84,0x5B8C,0x00CD,0x48B0,0x4DDD,0xD0E1,0xDDDD,
	0xDC0C,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0x30C5,0xDD5E,0xB68C,0xDDC1,0x5168,0xDDD4,0xD454,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xA0E0,0x1E0D,0x0365,0x1E00,0xE654,0x1E3E,0x054D,0xC0C0,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,

	0x00E1,0x1E1E,0x55E0,0x860E,0xEE8C,0xE8C8,0x00CD,0x0CDC,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xE0E1,0xE041,0xB0E8,0xE003,0x10E6,0xEBEE,0xCC00,0x0500,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0x1E01,0xDDD4,0x1E01,0xDDD4,0x1E01,0xDDD4,0xC0CC,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0x500C,0xDDDD,0xBEE5,0x4DDD,0xE0E1,
	0x4DDD,0xE0E1,0x4DDD,0xFEE1,0x4DDD,0xE1E1,0x4DDD,0xE0E1,

	0xDDDD,0xDDDD,0xCC44,0x0CC0,0x1FC5,0xE01E,0x0615,0x68B3,
	0xC3B0,0x8EE0,0x4865,0x0EFC,0x41E0,0x8EE0,0xC8B5,0xE8B3,
	0xDDDD,0xDDDD,0xD4CC,0xDDDD,0x45F8,0xDDDD,0xCF30,0xDDDD,
	0x0E0C,0xDDDD,0x5E0D,0x00CD,0x1E0C,0xEE54,0x0E00,0x00CD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xC0CD,0xDDDD,
	0x1684,0xDD45,0x61CC,0xD41B,0x0C48,0xD566,0xE35C,0xD453,
	0xDDDD,0xDDDD,0x00CD,0xC0CC,0xEE84,0x0E13,0x0865,0x0E1C,
	0x0BB5,0x0E1C,0xEB54,0x0E11,0x354D,0x0E1B,0x8054,0x5E16,

	0xDDDD,0xDDDD,0xDDDD,0xCDDD,0xDDDD,0x0DDD,0x4505,0x000C,
	0x5BE6,0x0E60,0x5E05,0x00E5,0x1EEF,0x06FC,0x1E0E,0x5E0C,
	0xDDDD,0xDDDD,0xDDC0,0xDDDD,0xD41E,0x4DDD,0x501E,0xCDD4,
	0xBEEE,0x0DD5,0xE08E,0x5DD5,0xE01E,0x1441,0xE01E,0x0D41,
	0xDDDD,0xDDDD,0xD4C4,0xDDDD,0xDCF5,0xDDDD,0xC03F,0x0C5C,
	0x0E0E,0xE0BF,0x860E,0xE5EE,0xFF0E,0xBB6E,0xE80E,0x8E3F,
	0xDDDD,0xDDDD,0xDC0C,0xDDDD,0x41E0,0xC5CD,0x01E0,0x5E05,
	0xEEE1,0x1E0B,0x08E0,0x1E5E,0x01E0,0x1E1E,0x01E0,0x1E1E,

	0xDDDD,0xDDDD,0xDC0C,0xDDDD,0xD0E1,0xDDDD,0xC0E1,0xDC00,
	0x80E1,0x41EE,0xE0E1,0x5B85,0xE5E1,0x0EEE,0xE5E1,0xC000,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0x00CD,0x00C5,
	0xE654,0xEE1B,0x03B5,0x0E15,0x41E0,0x0E14,0x03B5,0x0E15,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0x00CC,0xC0CC,
	0xEE85,0x0E18,0x55E0,0x0E1E,0x00E1,0x0E1E,0x55E0,0x0E5E,
	0xDDDD,0xDDDD,0xDDDD,0x0CDD,0xDDDD,0xE0DD,0xCC0C,0xE000,
	0x80E1,0xE8EE,0xE0E1,0xE005,0xE1E1,0xE0D0,0xE0E8,0xE005,

	0xDDDD,0xDDDD,0xDDDC,0xDDDD,0xCD41,0xDDC5,0x0501,0x0C5E,
	0x0BEE,0xE11E,0x5E08,0xE11E,0x1E01,0xE11E,0x1E01,0xE11E,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0x4DDD,0xCC00,0x0000,
	0x18EE,0xE6E6,0xB680,0xE803,0xEE10,0xE141,0xBE10,0xE803,
	0xDDDD,0xDDDD,0xDAC4,0xDDDD,0xDC31,0xDDDD,0x4160,0xDDDD,
	0x5B30,0xDDDD,0x5680,0xDDDD,0x0E10,0xDDDD,0x5B80,0xDDDD,
	0xDDDD,0x3EE5,0xDDDD,0xC00C,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,

	0x0B8C,0x651E,0x1E0A,0x54C0,0xC0CD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0x5683,0xDDDD,0x4860,0xDDDD,0xDC0C,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0x0365,0xDDDC,0xAC54,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xEE65,0x0E18,0x0054,0xC0CC,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,

	0x1EE6,0x06E1,0xC000,0xC00C,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0x0CDD,0x4DDC,
	0xE01E,0x5D41,0x0CC0,0x4DDC,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0x0C4C,0xC4DC,
	0xE086,0x0E18,0x0068,0xC0CC,0xDC0C,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDA,0xDDDD,
	0x01E0,0x1E1E,0xCC0C,0xC0C0,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0x54DD,

	0x30E1,0xC3EE,0xCC0C,0xDC00,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0x4C00,0xDDDD,
	0xEE14,0x0E1B,0x00CD,0xC0C5,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0x0C0C,0xDDDC,
	0xEE8C,0xEB58,0x00CD,0x054C,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0x80E6,0xE8EE,0xCC00,0x0C00,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,

	0x1E01,0xE11E,0xC0CC,0x0CC0,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0x1E10,0xEEEE,0xC0CC,0xB300,0x84DD,0x16EE,0xCDDD,0xC000,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0x48B0,0xDDDD,0xD0E1,0xDDDD,0xDC0C,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xE14D,0x54D0,0xE14D,0xFCD0,0xE14D,0xE0D0,0xE14D,0xE5D0,
	0xE14D,0xE140,0xE14D,0xE000,0xE14D,0x68EE,0x0CDD,0x8C00,

	0xE0CF,0x3148,0xE8C3,0x605B,0xFB50,0x3C0E,0x5E00,0x841E,
	0xEE80,0x1C3E,0x0FF0,0x8068,0x48E8,0xB0E0,0xDC06,0xE10C,
	0xDDDC,0xDDDD,0xDD41,0x0CDD,0xDD5B,0xE5DD,0xCD56,0x0C00,
	0x5D0E,0x48EE,0xCD5B,0x5C00,0xDD48,0x65DD,0xDDD0,0x54DD,
	0xDDDD,0x65DD,0xDDDC,0xE0DD,0xAC03,0xE0DD,0x53E3,0xE0D4,
	0x6E0C,0xE0D5,0x53E3,0xE0D4,0xDC03,0xE0DD,0xDDAC,0x0CDD,
	0xCFEE,0xDDDD,0x5E01,0xC00C,0x1601,0x8EE8,0x0E81,0xE55E,
	0x1FEE,0xE00E,0x0E11,0xE55E,0x8601,0x8EE8,0xC0CC,0xC00C,

	0xE1E0,0xDD41,0xE1E0,0xDD41,0xE1E0,0xDD41,0xE1E0,0xDD41,
	0xE1E1,0xDD41,0xE1E0,0xDD41,0xE1E0,0xDD41,0x0C0C,0xDDDC,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0x00CD,0xDDDD,0xEE5D,0xDDDD,0x0E14,
	0xDDDD,0xCDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xC445,0x00C4,0xFC5B,0xEE81,0x615E,0x0860,
	0xDDC0,0x0CDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xD4CC,0xDDDD,0x45F3,0xDDDD,0xCF3C,0xDDDD,

	0xDDDC,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xC0CD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0x054D,0xDDC0,0xEB5D,0xDD06,0x0E5D,0x50C0,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xC450,0x4C00,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xCDDD,0xDDC0,0x0DDD,0xD41E,0x0505,0xC01E,

	0xDDDD,0x0DDD,0xDDDD,0x0DDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0x0DDD,0xDDDD,0x00DD,
	0x0000,0xDDDD,0xDBBB,0xDDD0,0xDDB0,0xDDD0,0xDDB0,0xDDD0,
	0x0D00,0xDDD0,0x0000,0xDDD0,0x0DB0,0xDD00,0xD00B,0xD0F0,
	0xDDDD,0x0E14,0xDDDD,0x1E14,0xDDDD,0xEE14,0xDDDD,0x0E14,
	0xDDDD,0x0E14,0xDDDD,0xC0CD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0x3B16,0x0BB5,0x860E,0xEB54,0x1E0F,0x3544,0x8B0E,0x8054,
	0xB886,0xEE65,0xE0C0,0x0051,0x0CDD,0xDDDC,0xDDDD,0xDDDD,

	0x0E0C,0xDDDD,0x5E01,0x0CDD,0x1E0B,0xE844,0x0E06,0x0CDD,
	0x5688,0xDDDD,0x4860,0xDDDD,0xDC0C,0xDDDD,0xDDDD,0xDDDD,
	0x8E84,0xDDC0,0xB1C0,0xDC86,0x0C5E,0xD5E3,0x68C0,0xDC1B,
	0x1684,0xDD45,0x454D,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0x8E0D,0x6E0C,0xE8CD,0x8E03,0x5CDD,0x1E5E,0x00CD,0x1E5E,
	0xEE14,0x1E0F,0x00CD,0xC0CC,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0x85BE,0x51EE,0xE5E0,0x5B85,0xE1E0,0x0EEE,0xE1E0,0x5000,
	0x31E0,0x03EE,0xCC0C,0xCC00,0xDDDD,0xDDDD,0xDDDD,0xDDDD,

	0x0BE6,0x361E,0x5E05,0xCF6E,0x1EEF,0xC8EE,0x1E0E,0x5E3E,
	0x1EE6,0x6F1E,0xC000,0x5CC0,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDC,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDD4,0xDDDD,
	0xDDD5,0xDDDD,0xDDD4,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0x00DD,0xDDDD,0x0F0D,0xDDDD,0x070D,0xDDDD,0x000D,
	0xDDDD,0x000D,0xDDDD,0x000D,0xDDDD,0xB0DD,0xDDDD,0xB00D,
	0x0DB0,0xD0FF,0x0DBB,0xD077,0x0DDB,0xD0FF,0x000D,0xD0F7,
	0x00D0,0xD000,0x0000,0xD000,0xDDB0,0xD000,0xDDD0,0x0F00,

	0xDDDD,0x000D,0xDDDD,0x0D00,0xDDDD,0xB0D0,0x0DDD,0xB0D0,
	0x00DD,0xB0DD,0xD0DD,0xDD0D,0xDDDD,0x000D,0xDDDD,0x00DD,
	0xD00D,0x0F70,0xDB0D,0xD000,0xDB0D,0xDD0D,0xD00D,0xDD0D,
	0xD0DD,0xDD0D,0xDD0D,0xDD0D,0x0000,0xDD00,0x00D0,0xDD00,
	0xDDDD,0x00DD,0xDDDD,0x000D,0xDDDD,0x000D,0xDDDD,0x000D,
	0xDDDD,0x000D,0xDDDD,0x000D,0x00DD,0x0000,0x0000,0x2222,
	0x00D0,0xDD00,0x00D0,0xDD00,0x0DD0,0xDD00,0x0DDD,0xDD00,
	0x0DDD,0xDD00,0x0DDD,0xD000,0x0000,0x0000,0x2222,0x2222,

	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDD00,0xDDDD,0xD022,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xCDDD,
	0xDDDD,0x84DD,0xDDDD,0x65DD,0xDDDD,0xB5DD,0xDDDD,0x54DD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0x0C00,0xC000,
	0x63EE,0x3EEE,0x0C08,0xC0E1,0x4C0B,0xD0E1,0x41EB,0x40E1,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xC0CD,0x00CD,
	0x0E8C,0xEE5D,0x8EB5,0x0E14,0xBFE0,0x0E15,0xE1E1,0x0E10,

	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0x00C0,0xDC00,
	0xE68E,0xC3EE,0x1068,0xDC0E,0x1061,0xDD0E,0x1CFB,0xDD0E,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0x0CDD,0xDDDC,
	0xE3CD,0xDD41,0x0E54,0xC00C,0xBE65,0x8EE8,0x0E14,0xE55E,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xCDDD,
	0xDDDD,0x8CDD,0xC00C,0xE844,0xFEE0,0x3B5C,0xC860,0x8E04,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xC000,0xDDDD,
	0x0EEE,0xDDDD,0xC001,0xC00C,0x4DDC,0x8EE8,0xC00C,0x680C,

	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0x500C,0x4500,0x6EE1,0x5BE6,0xE0E1,0x5E08,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xC00C,0xDDDD,0x3E65,0xDDDC,0xE03B,0xDDD0,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0x000D,0xD000,
	0x2220,0x0722,0x2222,0x7722,0x2222,0x7722,0x2222,0x9772,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0x00DD,
	0xDD00,0x000D,0x0097,0x2220,0x2209,0x2222,0x2220,0x2222,

	0x0DDD,0x0000,0x700D,0x2227,0x7770,0x0000,0x0007,0x2222,
	0x2220,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
	0x2222,0x2222,0x2222,0x7722,0x2220,0x2222,0x0002,0x2770,
	0x2222,0x7002,0x2222,0x0222,0x2222,0x2222,0x2222,0x2222,
	0x2272,0x2002,0x2227,0x0222,0x2222,0x2222,0x7222,0x2227,
	0x7777,0x2227,0x7770,0x2227,0x7702,0x7777,0x0097,0x7777,
	0x0222,0xDDDD,0x2777,0xDDD0,0x2770,0xDD02,0x7702,0xDD07,
	0x9022,0xD077,0x0722,0xD099,0x7722,0xD090,0x7772,0x0907,

	0xDDDD,0x4DDD,0xDDDD,0x54DD,0xDDDD,0x65DD,0xDDDD,0x54DD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0x5B35,0xC0E1,0x5680,0x00E1,0x48EE,0x00E1,0xDC00,0xCC0C,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xEEE3,0xEE18,0xB086,0x0E1F,0x840E,0x0E1E,0xCDC0,0xC0C0,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0x141E,0xDD0E,0x15B3,0xDD0E,0x10E1,0xDD0E,0xCC0C,0xDDC0,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,

	0x1E14,0xE00E,0x0E14,0xE55E,0x0E14,0x8EE8,0xC0CD,0xC00C,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0x41E1,0x8E0D,0x41E0,0xBB5D,0x41E0,0xB54D,0xDC0C,0x54DD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0x1EE0,0xEEE1,0x1E00,0xE886,0x5EEE,0xE6E3,0xC000,0x000C,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xE0E1,0x1E01,0xE0E1,0x1E01,0xE0E1,0x1E01,0x0C0C,0xC0CC,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,

	0xEEE6,0xDD41,0x008B,0xDDDC,0x6EE1,0xDDD0,0x000C,0xDDDC,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0x7222,0x0077,0x7727,0x2200,0x0977,0x7227,0x7099,0x7777,
	0x0709,0x0000,0x2009,0x2222,0x2220,0x2222,0x2222,0x2222,
	0x2222,0x7222,0x2222,0x7777,0x0077,0x0000,0x2200,0x2222,
	0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
	0x2227,0x2222,0x2222,0x7722,0x2227,0x2222,0x2000,0x2222,
	0x0222,0x2200,0x2222,0x0022,0x2222,0x0222,0x2222,0x7722,

	0x2222,0x2222,0x2277,0x7772,0x7722,0x9777,0x2222,0x7777,
	0x2222,0x7722,0x2227,0x2222,0x0000,0x2222,0x2202,0x2200,
	0x2279,0x7700,0x2279,0x0022,0x2279,0x2222,0x2277,0x2222,
	0x2227,0x2272,0x2222,0x2272,0x2222,0x2772,0x2222,0x7772,
	0x2777,0x0022,0x7777,0x0722,0x7770,0x0722,0x7702,0x7772,
	0x7702,0x9772,0x7702,0x9777,0x7707,0x0977,0x7907,0x0977,
	0xDDD0,0xDDDD,0xDD02,0xDDDD,0xD077,0xDDDD,0xD070,0xDDDD,
	0x0770,0xDDDD,0x0770,0xDDDD,0x0979,0xDDDD,0x0979,0xDDDD,

	0xDDDD,0xDDDD,0x4DDD,0xC005,0x5DDD,0x06EB,0x5DDD,0xC00E,
	0x0DDD,0x4C8E,0xCDDD,0xC3E8,0xDDDD,0x5E5C,0xCDDD,0x5E00,
	0xDDDD,0xDDDD,0x000C,0xDC0C,0xEEE1,0x41E5,0x00E1,0x41E0,
	0x00E1,0x41E0,0xEEE1,0x41E0,0x00E1,0x41E0,0x00E1,0x01E0,
	0xDDDD,0xDDDD,0x00CD,0x54C0,0xEE14,0xB55E,0x0E14,0xFB50,
	0x0E14,0x0E00,0xEE14,0x0E1E,0x0E14,0x0E00,0x0E1C,0x3650,
	0xDDDD,0xDDDD,0x0C00,0xC000,0xE3EE,0x06EE,0x0C00,0xC01E,
	0x0DD4,0xD41E,0x0DDD,0xD41E,0x0DDA,0xD41E,0x0C00,0xD41E,

	0xDDDD,0xDDDD,0x0CDD,0xDDAC,0x614D,0xDDC3,0x865D,0x000C,
	0xEE84,0x6E61,0x1E0D,0x303B,0x1E0D,0x141E,0x1E0D,0x303B,
	0xDDDD,0xDDDD,0xDDDD,0x54DD,0xDDDD,0xB5DD,0x00CC,0xE5DC,
	0xEE11,0xE0D5,0x0E1B,0x8CDC,0x0E1E,0xCDDD,0x0E1B,0x0CDD,
	0xDDDD,0xDDDD,0xDC00,0xDDDD,0xD06E,0x4DDD,0x0C00,0xC005,
	0xE0C8,0x1EE6,0xE03E,0xB303,0xE5E5,0xE141,0xE5E0,0xB308,
	0xDDDD,0xDDDD,0xDC0C,0xDDDD,0xD0E1,0xDDDD,0x50E1,0xC450,
	0x60E1,0x85BE,0x50E1,0x65E0,0xF0E1,0x11EE,0xE5E1,0x51E0,

	0xDDDD,0xDDDD,0x0CDD,0xDDDC,0xE0DD,0xDD41,0xE000,0x4501,
	0xE0EE,0x5BEE,0xE008,0x5E08,0xE0BE,0x1E01,0xE5E0,0x1E01,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDD4,0xDDDD,0xDDD4,0xDDDD,
	0x2277,0x2222,0x7777,0x2222,0x2222,0x2222,0x2222,0x2222,
	0x2222,0x2222,0x2222,0x2222,0x2222,0x7772,0x7222,0x7777,
	0x2222,0x7722,0x2222,0x0000,0x0022,0x2222,0x2222,0x2222,
	0x2222,0x2222,0x2222,0x2222,0x7777,0x2227,0x7777,0x2227,

	0x7777,0x7772,0x7000,0x7777,0x0222,0x7790,0x2222,0x7907,
	0x2222,0x9907,0x7222,0x7077,0x7702,0x7077,0x0022,0x7077,
	0x2022,0x0022,0x7022,0x2222,0x7077,0x2222,0x0277,0x2227,
	0x0977,0x7277,0x0779,0x7277,0x0779,0x7277,0x0779,0x7277,
	0x2222,0x7772,0x2220,0x7777,0x7202,0x9997,0x7707,0x9997,
	0x7707,0x9977,0x2709,0x0977,0x2709,0x0722,0x7709,0x0722,
	0x7990,0x0999,0x9990,0x0999,0x9990,0x0997,0x9990,0x9097,
	0x9990,0x9097,0x9990,0x9099,0x9900,0x0079,0x9900,0x0227,

	0xD099,0xDDDD,0xD099,0xDDDD,0xDD09,0xDDDD,0xDD09,0xDDDD,
	0xDDD0,0xDDDD,0xDDD0,0xDDDD,0xDDDD,0xDDDD,0xDDD0,0xDDDD,
	0x14DD,0xCFEE,0xCDDD,0x4C00,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xEEE1,0xEEE8,0x000C,0x000C,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xEE1F,0x658E,0x00CC,0x54C0,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,

	0x03EE,0xD41E,0xCC00,0xDDC0,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0x1E0D,0x6E61,0xC0CD,0x000C,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0x0E11,0xE14D,0xC0CC,0x0CDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xE0FE,0x1EEE,0xE0C0,0xC001,0xE0DD,0xDD41,0x0CDD,0xDDDC,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,

	0x60E1,0x61EE,0x0C0C,0x5C00,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xE06E,0x1E01,0x0C50,0xC0CC,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDD4,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0x7777,0x9777,0x2222,0x9972,0x7222,0x9977,0x7777,0x9997,
	0x9777,0x7999,0x7777,0x9999,0x7777,0x9999,0x9777,0x9999,

	0x7779,0x2277,0x7799,0x2277,0x7799,0x2777,0x7777,0x7777,
	0x7777,0x7777,0x9999,0x7777,0x9999,0x7779,0x9999,0x9999,
	0x7222,0x0770,0x7722,0x0007,0x7722,0x2227,0x7777,0x2227,
	0x9777,0x2277,0x9977,0x7779,0x9999,0x7799,0x9999,0x9999,
	0x0799,0x7279,0x0990,0x7779,0x0902,0x9799,0x0902,0x9799,
	0x0022,0x9999,0x7077,0x9990,0x0777,0x0990,0x0999,0x9099,
	0x7709,0x0722,0x7990,0x0722,0x7900,0x0722,0x7900,0x0772,
	0x9020,0x0797,0x0770,0x2799,0x0999,0x2279,0x9999,0x2270,

	0x9907,0x2222,0x9027,0x2227,0x0227,0x2277,0x7227,0x2270,
	0x2277,0x2707,0x2770,0x7702,0x2990,0x7902,0x7990,0x9022,
	0xDD00,0xDDDD,0xDD00,0xDDDD,0xD000,0xDDDD,0xD090,0xDDDD,
	0xD090,0xDDDD,0x0990,0xDDDD,0x0990,0xDDDD,0x0907,0xDDDD,
};

const unsigned short instructionScreenMap[1024] __attribute__((aligned(4)))=
{
	0x0001,0x0001,0x0001,0x0001,0x0002,0x0003,0x0004,0x0005,
	0x0006,0x0007,0x0001,0x0001,0x0001,0x0008,0x0009,0x000A,
	0x0001,0x0001,0x000B,0x000C,0x000A,0x000D,0x000E,0x000F,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0010,0x0011,0x0012,0x0013,0x0014,
	0x0015,0x0016,0x0017,0x0018,0x0019,0x001A,0x001B,0x001C,
	0x001D,0x001E,0x001F,0x0020,0x0021,0x0022,0x0023,0x0024,
	0x0025,0x0026,0x0027,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0001,0x0001,0x0001,0x0028,0x0029,0x002A,0x002B,0x002C,
	0x002D,0x002E,0x002F,0x0030,0x0031,0x0032,0x0033,0x0034,
	0x0035,0x0036,0x0037,0x0038,0x0039,0x003A,0x003B,0x003C,
	0x003D,0x003E,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0001,0x003F,0x0040,0x0041,0x0042,
	0x0043,0x0044,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0045,0x0046,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0047,0x0048,0x0049,0x004A,0x004B,
	0x004C,0x004D,0x004E,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x004F,0x0050,0x0051,0x0052,0x0053,
	0x0054,0x0055,0x0056,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0057,
	0x0058,0x0059,0x005A,0x005B,0x005C,0x005D,0x005E,0x005F,
	0x0060,0x0061,0x0062,0x0063,0x0064,0x0065,0x0066,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0067,
	0x0068,0x0069,0x006A,0x006B,0x006C,0x006D,0x006E,0x006F,
	0x0070,0x0071,0x0072,0x0073,0x0074,0x0075,0x0076,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0077,0x0078,0x0079,0x007A,
	0x007B,0x007C,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x007D,0x007E,0x007F,0x0080,0x0081,
	0x0082,0x0083,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0001,0x0001,0x0001,0x0084,0x0085,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0086,0x0087,0x0088,0x0089,0x008A,
	0x008B,0x008C,0x008D,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x008E,0x008F,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0001,0x0001,0x0001,0x0090,0x0091,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0092,0x0093,0x0094,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0095,0x0096,0x0097,0x0098,
	0x0099,0x009A,0x009B,0x009C,0x009D,0x0001,0x0000,0x0000,

	0x009E,0x009F,0x00A0,0x00A1,0x00A2,0x00A3,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x00A4,0x00A5,0x00A6,0x00A7,
	0x00A8,0x00A9,0x00AA,0x00AB,0x00AC,0x0001,0x0000,0x0000,
	0x00AD,0x00AE,0x00AF,0x00B0,0x00B1,0x00B2,0x00B3,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x00B4,0x00B5,0x00B6,0x00B7,
	0x00B8,0x00B9,0x00BA,0x00BB,0x00BC,0x00BD,0x0000,0x0000,

	0x00BE,0x00BF,0x00C0,0x00C1,0x00C2,0x00C3,0x00C4,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x00C5,0x00C6,0x00C7,0x00C8,
	0x00C9,0x00CA,0x00CB,0x00CC,0x00CD,0x00CE,0x0000,0x0000,
	0x00CF,0x00D0,0x00D1,0x00D2,0x00D3,0x00D4,0x00D5,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

const unsigned short instructionScreenPal[256] __attribute__((aligned(4)))=
{
	0x0000,0x2108,0x02BF,0x5294,0x40E7,0x1463,0x739C,0x0155,
	0x3DEF,0x000A,0x4929,0x6B39,0x2484,0x554A,0x7FFF,0x5AD7,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

//}}BLOCK(instructionScreen)
