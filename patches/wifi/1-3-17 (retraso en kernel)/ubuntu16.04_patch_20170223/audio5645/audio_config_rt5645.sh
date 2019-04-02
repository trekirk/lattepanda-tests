#! /bin/bash
sudo amixer -cchtrt5645 cset name='media0_out mix 0 media1_in Switch' 1
sudo amixer -cchtrt5645 cset name='codec_out0 mix 0 pcm0_in Switch' 1
sudo amixer -cchtrt5645 cset name='pcm0_in Gain 0 Volume' 0 0
sudo amixer -cchtrt5645 cset name='media1_in Gain 0 Volume' 0 0
sudo amixer -cchtrt5645 cset name='codec_out0 Gain 0 Volume' 0 0
sudo amixer -cchtrt5645 cset name='media1_in Gain 0 Switch' 0
sudo amixer -cchtrt5645 cset name='pcm0_in Gain 0 Switch' 0
sudo amixer -cchtrt5645 cset name='codec_out0 Gain 0 Switch' 0
sudo amixer -cchtrt5645 cset name='SPOL MIX SPKVOL L Switch' 0
sudo amixer -cchtrt5645 cset name='SPOL MIX SPKVOL R Switch' 0
sudo amixer -cchtrt5645 cset name='HPO MIX HPVOL Switch' 1
sudo amixer -cchtrt5645 cset name='HPOVOL L Switch' 1
sudo amixer -cchtrt5645 cset name='HPOVOL R Switch' 1
sudo amixer -cchtrt5645 cset name='Stereo DAC MIXL DAC L1 Switch' 1
sudo amixer -cchtrt5645 cset name='Stereo DAC MIXR DAC R1 Switch' 1
sudo amixer -cchtrt5645 cset name='DAC1 MIXL DAC1 Switch' 1
sudo amixer -cchtrt5645 cset name='DAC1 MIXR DAC1 Switch' 1
sudo amixer -cchtrt5645 cset name='HPOVOL MIXL DAC1 Switch' 1
sudo amixer -cchtrt5645 cset name='HPOVOL MIXR DAC1 Switch' 1
sudo amixer -cchtrt5645 cset name='Headphone Channel Switch' 1 1
sudo amixer -cchtrt5645 cset name='Headphone Switch' 1
sleep 1
sudo amixer -cchtrt5645 cset name='pcm1_out Gain 0 Switch' 0
sudo amixer -cchtrt5645 cset name='codec_in0 Gain 0 Switch' 0
sudo amixer -cchtrt5645 cset name='pcm1_out mix 0 codec_in0 Switch' 1
sudo amixer -cchtrt5645 cset name='codec_in0 Gain 0 Volume' 0 0
sudo amixer -cchtrt5645 cset name='pcm1_out Gain 0 Volume' 0 0
sudo amixer -cchtrt5645 cset name='RECMIXL BST1 Switch' 0
sudo amixer -cchtrt5645 cset name='RECMIXR BST1 Switch' 0
sudo amixer -cchtrt5645 cset name='RECMIXL BST2 Switch' 1
sudo amixer -cchtrt5645 cset name='RECMIXR BST2 Switch' 1
sudo amixer -cchtrt5645 cset name='Sto1 ADC MIXL ADC2 Switch' 0
sudo amixer -cchtrt5645 cset name='Sto1 ADC MIXR ADC2 Switch' 0
sudo amixer -cchtrt5645 cset name='Sto1 ADC MIXL ADC1 Switch' 1
sudo amixer -cchtrt5645 cset name='Sto1 ADC MIXR ADC1 Switch' 1
sudo amixer -cchtrt5645 cset name='ADC Capture Switch' 1 1
sudo amixer -cchtrt5645 cset name='Headset Mic Switch' 1
sleep 1
sudo alsactl store chtrt5645
