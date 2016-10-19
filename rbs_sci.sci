// Generates a random binary sequence
// Uses Butterworth bandpass filter
// Cut off frequency <= 0.5 Hz
// Error checking not added

function randbinseq = rbs_sci(len,band,level)
    L = len; B = band; levs = level;
    u1 = rand(5*L,1,'normal');
    hz = iir(8,'bp','butt',B,[0 0]); // Bandpass filter
    hzf = filter(numer(hz),denom(hz),u1);
    u1 = sign(u1(2*L+1:$-2*L,:)); 
    u1 = (levs(2)-levs(1))*(u1+1)/2+levs(1);
    randbinseq = u1;
endfunction
