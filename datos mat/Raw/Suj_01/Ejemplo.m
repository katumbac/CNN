
clear all
load('Raw_Data_Suj_01_run_8.mat')

ch=1;

[p,f] = pspectrum(eeg_raw(:,ch),Fs);
figure
plot(f,pow2db(p))
title("Espectro de Potencia, Suj=1, Ch=1")
xlabel('Frecuencia (Hz)')
ylabel('Espectro de potencia (dB)')



bpfilt = designfilt('bandpassiir','FilterOrder',10,'HalfPowerFrequency1',0.3,'HalfPowerFrequency2',50,'SampleRate',Fs);
eeg_filt=filtfilt(bpfilt,eeg_raw);


ej_time=(0:size(eeg_raw,1)-1)*(1/Fs);
figure
plot(ej_time,eeg_filt(:,ch));     % dibujar solo canal 1
hold on
stem(markers(2,:)/Fs,markers(1,:)*20,'Linewidth',2);  % Para visualizar mejor, el valor de los marcadores esta multipliccado po 20
xlim([14 55])
ylim([-60 200])
xlabel('tiempo (s)')
ylabel('Amplitud (uV)')
legend('EEG filtrada','Marcadores')
title('Señal EEG, Suj=1, Ch=1')
