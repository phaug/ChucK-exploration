// connect sine oscillator to D/A convertor (sound card)
SinOsc s => dac;
60=> int key;
0=> int idx;
[0, 1, 5, 1, 9] @=>int scale[];

while(true){
    Math.mtof(key+scale[idx%5])=>s.freq;
    // allow .125 seconds to pass
    .125::second=> now;
    idx+1=>idx;
}