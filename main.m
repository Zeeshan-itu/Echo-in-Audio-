[audio, samplingrate] = audioread('audio.wav');
samplesize = 1 / samplingrate;
delay = 0.3;
attonovation = 0.5;
problem = '6-';

audio = audio';
actual  = [audio zeros(1, fix(samplingrate * delay))];
weakend = attonovation * [zeros(1, fix(samplingrate * delay)) audio];
audio   = (actual + weakend);
plot(audio);
audiowrite('reult.wav', audio, samplingrate);


