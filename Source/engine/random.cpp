#include "engine/random.hpp"

#include <limits>

#include "utils/stdcompat/abs.hpp"

namespace devilution {

/** Current game seed */
uint32_t sglGameSeed;

/**
 * Specifies the increment used in the Borland C/C++ pseudo-random number generator algorithm.
 */
const uint32_t RndInc = 1;

/**
 * Specifies the multiplier used in the Borland C/C++ pseudo-random number generator algorithm.
 */
const uint32_t RndMult = 0x015A4E35;

void SetRndSeed(uint32_t seed)
{
	sglGameSeed = seed;
}

uint32_t GetLCGEngineState()
{
	return sglGameSeed;
}

int32_t GetRndSeed()
{
	const int32_t seed = static_cast<int32_t>(sglGameSeed);
	// since abs(INT_MIN) is undefined behavior, handle this value specially
	return seed == std::numeric_limits<int32_t>::min() ? std::numeric_limits<int32_t>::min() : abs(seed);
}

int32_t AdvanceRndSeed()
{
	sglGameSeed = (RndMult * sglGameSeed) + RndInc;
	return GetRndSeed();
}

int32_t GenerateRnd(int32_t v)
{
	if (v <= 0)
		return 0;
	if (v < 0xFFFF)
		return (AdvanceRndSeed() >> 16) % v;
	return AdvanceRndSeed() % v;
}

} // namespace devilution
