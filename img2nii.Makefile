OBJBIN=~/Code/objectify/bin
#
# Create mock BOLD data from lists of images
#
test: test_img2nii
	
test_img2nii: stim/Occ_noise_gray1_V_*.gif
	python $(OBJBIN)/img2nii.py \
		stim/Occ_noise_gray1_V_*.gif \
		data/test.nii \
		data/test.txt 

# We have
# H/V is horiz versus vertical
# 1/2 is left versus right
# NoOcc_noise_gray1_H*.gif
# NoOcc_noise_gray1_V*.gif
# NoOcc_noise_gray2_H*.gif
# NoOcc_noise_gray2_V*.gif
# NoOcc_nonoise_gray1_H*.gif
# NoOcc_nonoise_gray1_V*.gif
# NoOcc_nonoise_gray2_H*.gif
# NoOcc_nonoise_gray2_V*.gif
#
# Occ_noise_gray1_H*.gif
# Occ_noise_gray1_V*.gif
# Occ_noise_gray2_H*.gif
# Occ_noise_gray2_V*.gif
# Occ_nonoise_gray1_H*.gif
# Occ_nonoise_gray1_V*.gif
# Occ_nonoise_gray2_H*.gif
# Occ_nonoise_gray2_V*.gif
all: img2nii_NoOcc img2nii_Occ

remove:
	-rm data/*_H.nii
	-rm data/*_H.txt
	-rm data/*_V.nii
	-rm data/*_V.txt
		
img2nii_NoOcc: data/NoOcc_noise_gray1_H.nii data/NoOcc_noise_gray1_V.nii data/NoOcc_noise_gray2_H.nii data/NoOcc_noise_gray2_V.nii data/NoOcc_nonoise_gray1_H.nii data/NoOcc_nonoise_gray1_V.nii data/NoOcc_nonoise_gray2_H.nii data/NoOcc_nonoise_gray2_V.nii

data/NoOcc_noise_gray1_H.nii:
	python $(OBJBIN)/img2nii.py \
		stim/NoOcc_noise_gray1_H*.gif \
		data/NoOcc_noise_gray1_H.nii \
		data/NoOcc_noise_gray1_H.txt

data/NoOcc_noise_gray1_V.nii:
	python $(OBJBIN)/img2nii.py \
		stim/NoOcc_noise_gray1_V*.gif \
		data/NoOcc_noise_gray1_V.nii \
		data/NoOcc_noise_gray1_V.txt
		
data/NoOcc_noise_gray2_H.nii:
	python $(OBJBIN)/img2nii.py \
		stim/NoOcc_noise_gray2_H*.gif \
		data/NoOcc_noise_gray2_H.nii \
		data/NoOcc_noise_gray2_H.txt

data/NoOcc_noise_gray2_V.nii:
	python $(OBJBIN)/img2nii.py \
		stim/NoOcc_noise_gray2_V*.gif \
		data/NoOcc_noise_gray2_V.nii \
		data/NoOcc_noise_gray2_V.txt

data/NoOcc_nonoise_gray1_H.nii:
	python $(OBJBIN)/img2nii.py \
		stim/NoOcc_nonoise_gray1_H*.gif \
		data/NoOcc_nonoise_gray1_H.nii \
		data/NoOcc_nonoise_gray1_H.txt

data/NoOcc_nonoise_gray1_V.nii:
	python $(OBJBIN)/img2nii.py \
		stim/NoOcc_nonoise_gray1_V*.gif \
		data/NoOcc_nonoise_gray1_V.nii \
		data/NoOcc_nonoise_gray1_V.txt
		
data/NoOcc_nonoise_gray2_H.nii:
	python $(OBJBIN)/img2nii.py \
		stim/NoOcc_nonoise_gray2_H*.gif \
		data/NoOcc_nonoise_gray2_H.nii \
		data/NoOcc_nonoise_gray2_H.txt

data/NoOcc_nonoise_gray2_V.nii:
	python $(OBJBIN)/img2nii.py \
		stim/NoOcc_nonoise_gray2_V*.gif \
		data/NoOcc_nonoise_gray2_V.nii \
		data/NoOcc_nonoise_gray2_V.txt


img2nii_Occ: data/Occ_noise_gray1_H.nii data/Occ_noise_gray1_V.nii data/Occ_noise_gray2_H.nii data/Occ_noise_gray2_V.nii data/Occ_nonoise_gray1_H.nii data/Occ_nonoise_gray1_V.nii data/Occ_nonoise_gray2_H.nii data/Occ_nonoise_gray2_V.nii

data/Occ_noise_gray1_H.nii:
	python $(OBJBIN)/img2nii.py \
		stim/Occ_noise_gray1_H*.gif \
		data/Occ_noise_gray1_H.nii \
		data/Occ_noise_gray1_H.txt

data/Occ_noise_gray1_V.nii:
	python $(OBJBIN)/img2nii.py \
		stim/Occ_noise_gray1_V*.gif \
		data/Occ_noise_gray1_V.nii \
		data/Occ_noise_gray1_V.txt
		
data/Occ_noise_gray2_H.nii:
	python $(OBJBIN)/img2nii.py \
		stim/Occ_noise_gray2_H*.gif \
		data/Occ_noise_gray2_H.nii \
		data/Occ_noise_gray2_H.txt

data/Occ_noise_gray2_V.nii:
	python $(OBJBIN)/img2nii.py \
		stim/Occ_noise_gray2_V*.gif \
		data/Occ_noise_gray2_V.nii \
		data/Occ_noise_gray2_V.txt

data/Occ_nonoise_gray1_H.nii:
	python $(OBJBIN)/img2nii.py \
		stim/Occ_nonoise_gray1_H*.gif \
		data/Occ_nonoise_gray1_H.nii \
		data/Occ_nonoise_gray1_H.txt

data/Occ_nonoise_gray1_V.nii:
	python $(OBJBIN)/img2nii.py \
		stim/Occ_nonoise_gray1_V*.gif \
		data/Occ_nonoise_gray1_V.nii \
		data/Occ_nonoise_gray1_V.txt
		
data/Occ_nonoise_gray2_H.nii:
	python $(OBJBIN)/img2nii.py \
		stim/Occ_nonoise_gray2_H*.gif \
		data/Occ_nonoise_gray2_H.nii \
		data/Occ_nonoise_gray2_H.txt

data/Occ_nonoise_gray2_V.nii:
	python $(OBJBIN)/img2nii.py \
		stim/Occ_nonoise_gray2_V*.gif \
		data/Occ_nonoise_gray2_V.nii \
		data/Occ_nonoise_gray2_V.txt
	