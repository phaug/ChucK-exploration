SinOsc s => dac;
60=> int key;
0=> int idx;
[0, 2, 4, 7, 9] @=>int scale[];

while(true){
    Math.mtof(key+scale[idx%5])=>s.freq;
    .125::second=> now;
    idx+1=>idx;
}