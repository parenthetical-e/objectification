OBJBIN=~/Code/objectify/bin
#
# Create mock BOLD data from lists of images, set 2.
#

all: img2nii_NoOcc2 img2nii_Occ2

remove:
	-rm data2/*_H.nii
	-rm data2/*_H.txt
	-rm data2/*_V.nii
	-rm data2/*_V.txt
		
img2nii_NoOcc2: data2/NoOcc_noise_gray70_H.nii data2/NoOcc_noise_gray70_V.nii data2/NoOcc_noise_gray60_H.nii data2/NoOcc_noise_gray60_V.nii data2/NoOcc_noise_gray40_H.nii data2/NoOcc_noise_gray40_V.nii data2/NoOcc_noise_gray20_H.nii data2/NoOcc_noise_gray20_V.nii data2/NoOcc_noise_gray2_H.nii data2/NoOcc_noise_gray2_V.nii
	
	
data2/NoOcc_noise_gray70_H.nii:
	python $(OBJBIN)/img2nii.py \
		stim2/70/NoOcc_gray70_H_*.gif \
		data2/NoOcc_noise_gray70_H.nii \
		data2/NoOcc_noise_gray70_H.txt

data2/NoOcc_noise_gray70_V.nii:
	python $(OBJBIN)/img2nii.py \
		stim2/70/NoOcc_gray70_V_*.gif \
		data2/NoOcc_noise_gray70_V.nii \
		data2/NoOcc_noise_gray70_V.txt

data2/NoOcc_noise_gray60_H.nii:
	python $(OBJBIN)/img2nii.py \
		stim2/60/NoOcc_gray60_H_*.gif \
		data2/NoOcc_noise_gray60_H.nii \
		data2/NoOcc_noise_gray60_H.txt

data2/NoOcc_noise_gray60_V.nii:
	python $(OBJBIN)/img2nii.py \
		stim2/60/NoOcc_gray60_V_*.gif \
		data2/NoOcc_noise_gray60_V.nii \
		data2/NoOcc_noise_gray60_V.txt

data2/NoOcc_noise_gray40_H.nii:
	python $(OBJBIN)/img2nii.py \
		stim2/40/NoOcc_gray40_H_*.gif \
		data2/NoOcc_noise_gray40_H.nii \
		data2/NoOcc_noise_gray40_H.txt

data2/NoOcc_noise_gray40_V.nii:
	python $(OBJBIN)/img2nii.py \
		stim2/40/NoOcc_gray40_V_*.gif \
		data2/NoOcc_noise_gray40_V.nii \
		data2/NoOcc_noise_gray40_V.txt

data2/NoOcc_noise_gray20_H.nii:
	python $(OBJBIN)/img2nii.py \
		stim2/20/NoOcc_gray20_H_*.gif \
		data2/NoOcc_noise_gray20_H.nii \
		data2/NoOcc_noise_gray20_H.txt

data2/NoOcc_noise_gray20_V.nii:
	python $(OBJBIN)/img2nii.py \
		stim2/20/NoOcc_gray20_V_*.gif \
		data2/NoOcc_noise_gray20_V.nii \
		data2/NoOcc_noise_gray20_V.txt

data2/NoOcc_noise_gray2_H.nii:
	python $(OBJBIN)/img2nii.py \
		stim2/2/NoOcc_gray2_H_*.gif \
		data2/NoOcc_noise_gray2_H.nii \
		data2/NoOcc_noise_gray2_H.txt

data2/NoOcc_noise_gray2_V.nii:
	python $(OBJBIN)/img2nii.py \
		stim2/2/NoOcc_gray2_V_*.gif \
		data2/NoOcc_noise_gray2_V.nii \
		data2/NoOcc_noise_gray2_V.txt





img2nii_Occ2: data2/Occ_noise_gray70_H.nii data2/Occ_noise_gray70_V.nii data2/Occ_noise_gray60_H.nii data2/Occ_noise_gray60_V.nii data2/Occ_noise_gray40_H.nii data2/Occ_noise_gray40_V.nii data2/Occ_noise_gray20_H.nii data2/Occ_noise_gray20_V.nii data2/Occ_noise_gray2_H.nii data2/Occ_noise_gray2_V.nii

data2/Occ_noise_gray70_H.nii:
	python $(OBJBIN)/img2nii.py \
		stim2/70/Occ_gray70_H_*.gif \
		data2/Occ_noise_gray70_H.nii \
		data2/Occ_noise_gray70_H.txt

data2/Occ_noise_gray70_V.nii:
	python $(OBJBIN)/img2nii.py \
		stim2/70/Occ_gray70_V_*.gif \
		data2/Occ_noise_gray70_V.nii \
		data2/Occ_noise_gray70_V.txt

data2/Occ_noise_gray60_H.nii:
	python $(OBJBIN)/img2nii.py \
		stim2/60/Occ_gray60_H_*.gif \
		data2/Occ_noise_gray60_H.nii \
		data2/Occ_noise_gray60_H.txt

data2/Occ_noise_gray60_V.nii:
	python $(OBJBIN)/img2nii.py \
		stim2/60/Occ_gray60_V_*.gif \
		data2/Occ_noise_gray60_V.nii \
		data2/Occ_noise_gray60_V.txt

data2/Occ_noise_gray40_H.nii:
	python $(OBJBIN)/img2nii.py \
		stim2/40/Occ_gray40_H_*.gif \
		data2/Occ_noise_gray40_H.nii \
		data2/Occ_noise_gray40_H.txt

data2/Occ_noise_gray40_V.nii:
	python $(OBJBIN)/img2nii.py \
		stim2/40/Occ_gray40_V_*.gif \
		data2/Occ_noise_gray40_V.nii \
		data2/Occ_noise_gray40_V.txt

data2/Occ_noise_gray20_H.nii:
	python $(OBJBIN)/img2nii.py \
		stim2/20/Occ_gray20_H_*.gif \
		data2/Occ_noise_gray20_H.nii \
		data2/Occ_noise_gray20_H.txt

data2/Occ_noise_gray20_V.nii:
	python $(OBJBIN)/img2nii.py \
		stim2/20/Occ_gray20_V_*.gif \
		data2/Occ_noise_gray20_V.nii \
		data2/Occ_noise_gray20_V.txt

data2/Occ_noise_gray2_H.nii:
	python $(OBJBIN)/img2nii.py \
		stim2/2/Occ_gray2_H_*.gif \
		data2/Occ_noise_gray2_H.nii \
		data2/Occ_noise_gray2_H.txt

data2/Occ_noise_gray2_V.nii:
	python $(OBJBIN)/img2nii.py \
		stim2/2/Occ_gray2_V_*.gif \
		data2/Occ_noise_gray2_V.nii \
		data2/Occ_noise_gray2_V.txt

