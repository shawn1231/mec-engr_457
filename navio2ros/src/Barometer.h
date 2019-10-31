#ifndef BAROMETERH_
#define BAROMETERH_

#include "Navio/MS5611.h"

class barometer
{
	private:
		int baro_step = 0; // declare the step counter (used to delay time from read to caclulate)
		MS5611 baro_sensor; // declare a new barometer object
		// using the barometric equation in region 1 (valid for elevations up to 36,000ft)
		// see wikipedia.org/wiki/Barometric_formula for more information
		// using imperial units (some values use strange mixed units, Kelvin with imperial length?), has been tested and output looks ok
		// CONSTANTS
		const float Pb =  29.92126;    // static reference pressure for barometric equation (inHg)
		const float Tb = 288.815;      // reference temperature for barometric equation (K) !!!not currently using this in the calculation
		const float Lb =   -.0019812;  // standard temperature lapse rate (K/ft)
		const float hb =   0.0;        // refernce height (ft), could be omitted but kept for generality
		const float  R =   8.9494596e4;// universal gas constant (lbft^2)/(lbmolKs^2)
		const float g0 =  32.17405;    // acceleration due to earth's gravity near the surface (ft/s^2)
		const float  M =  28.9644;     // molar mass of earth's air (lb/lbmol)
		// VARIABLES
		float Tc  = 0.0; // temperature (C) <--read directly from sensor
		float Tf  = 0.0; // temperature (F) <--this is not used for any calcs
		float Tk  = 0.0; // temperature (K) <--converted for use in barometric equation
		float Pm  = 0.0; // pressure (mbar) <--read directly from sensor
		float Phg = 0.0; // pressure (inHg) <--converted for use in barometric equation
		float m_msl = 0.0; // mean sea level altitue (ft) [should be close to 920ft for UMKC Flarsheim]
	public:
		barometer();
		void update_sensor();
		float get_msl();
};


#endif
