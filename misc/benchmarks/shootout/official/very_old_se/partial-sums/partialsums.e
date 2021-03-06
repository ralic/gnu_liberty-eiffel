--   The Computer Language Shootout
--   http://shootout.alioth.debian.org
--
--   Contributed by A. Suter
--
--   Compilation:
--      se c -clean -boost -no_gc -O3 -fomit-frame-pointer
--      -funroll-loops -ffast-math partial_sums.e -o partial_sums
class PARTIALSUMS

inherit
	ARGUMENTS

create {ANY}
	make

feature {ANY}
	make
		local
			sum_1, sum_2, sum_3, flint, cookson, harmonic, riemann, alternating_harmonic, gregory: DOUBLE
			n_integer, k_integer: INTEGER; k_real, n_real: DOUBLE; c, k_real_2, k_real_3: DOUBLE; flag: BOOLEAN
		do
			if not (argument_count = 1 and then argument(1).is_integer) then
				die_with_code(1)
			end
			n_integer := argument(1).to_integer
			n_real := n_integer
			if n_integer <= 1 then
				die_with_code(1)
			end
			from
				sum_1 := 1.0 -- short for k = 0
				c := 2.0 / 3.0
				k_integer := 1
				k_real := 1.0
			invariant
				k_integer = k_real
				n_integer = n_real
			until
				k_integer > n_integer
			loop
				k_real_2 := k_real ^ 2
				k_real_3 := k_real_2 * k_real
				sum_1 := sum_1 + c ^ k_integer
				sum_2 := sum_2 + (1.0).to_double / k_real.sqrt
				sum_3 := sum_3 + (1.0).to_double / (k_real * (k_real + 1.0))
				riemann := riemann + (1.0).to_double / k_real_2
				flint := flint + (1.0).to_double / (k_real_3 * k_real.sin ^ 2)
				cookson := cookson + (1.0).to_double / (k_real_3 * k_real.cos ^ 2)
				harmonic := harmonic + (1.0).to_double / k_real
				if flag then
					alternating_harmonic := alternating_harmonic - (1.0).to_double / k_real
					gregory := gregory - (1.0).to_double / ((2.0).to_double * k_real - 1.0)
				else
					alternating_harmonic := alternating_harmonic + (1.0).to_double / k_real
					gregory := gregory + (1.0).to_double / ((2.0).to_double * k_real - 1.0)
				end
				flag := not flag
				k_integer := k_integer + 1
				k_real := k_real + 1.0
			end
			io.put_string(sum_1.to_string_format(9) + "%T(2/3)^k%N")
			io.put_string(sum_2.to_string_format(9) + "%Tk^-0.5%N")
			io.put_string(sum_3.to_string_format(9) + "%T1/k(k+1)%N")
			io.put_string(flint.to_string_format(9) + "%TFlint Hills%N")
			io.put_string(cookson.to_string_format(9) + "%TCookson Hills%N")
			io.put_string(harmonic.to_string_format(9) + "%THarmonic%N")
			io.put_string(riemann.to_string_format(9) + "%TRiemann Zeta%N")
			io.put_string(alternating_harmonic.to_string_format(9) + "%TAlternating Harmonic%N")
			io.put_string(gregory.to_string_format(9) + "%TGregory%N")
		end

end -- class PARTIALSUMS
