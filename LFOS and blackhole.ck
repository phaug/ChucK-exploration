PulseOsc s => dac;
PulseOsc lfo => blackhole;
// set the frequency of the lfo
5 => lfo.freq;
while (20::ms => now){
( lfo.last() * 10 ) + 440 => s.freq;
}