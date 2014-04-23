OBJBIN=~/Code/objectify/bin
#
# Create mock BOLD data from lists of images, where all images pixels have been 
# shuffled among themselves.
#

test: test_img2nii test_predict
	
test_img2nii: stim/Occ_noise_gray1_V_*.gif
	python $(OBJBIN)/img2nii.py \
		stim/Occ_noise_gray1_V_*.gif \
		data/test_null.nii \
		data/test_null.txt \
		--null

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
remove:
	-rm data/*_null.nii
	-rm data/*_null.txt

all: img2nii_NoOcc img2nii_Occ
	
img2nii_NoOcc: data/NoOcc_noise_gray1_H_null.nii data/NoOcc_noise_gray1_V_null.nii data/NoOcc_noise_gray2_H_null.nii data/NoOcc_noise_gray2_V_null.nii data/NoOcc_nonoise_gray1_H_null.nii data/NoOcc_nonoise_gray1_V_null.nii data/NoOcc_nonoise_gray2_H_null.nii data/NoOcc_nonoise_gray2_V_null.nii

data/NoOcc_noise_gray1_H_null.nii:
	python $(OBJBIN)/img2nii.py \
		stim/NoOcc_noise_gray1_H*.gif \
		data/NoOcc_noise_gray1_H_null.nii \
		data/NoOcc_noise_gray1_H_null.txt \
		--null

data/NoOcc_noise_gray1_V_null.nii:
	python $(OBJBIN)/img2nii.py \
		stim/NoOcc_noise_gray1_V*.gif \
		data/NoOcc_noise_gray1_V_null.nii \
		data/NoOcc_noise_gray1_V_null.txt \
		--null
		
data/NoOcc_noise_gray2_H_null.nii:
	python $(OBJBIN)/img2nii.py \
		stim/NoOcc_noise_gray2_H*.gif \
		data/NoOcc_noise_gray2_H_null.nii \
		data/NoOcc_noise_gray2_H_null.txt \
		--null

data/NoOcc_noise_gray2_V_null.nii:
	python $(OBJBIN)/img2nii.py \
		stim/NoOcc_noise_gray2_V*.gif \
		data/NoOcc_noise_gray2_V_null.nii \
		data/NoOcc_noise_gray2_V_null.txt \
		--null

data/NoOcc_nonoise_gray1_H_null.nii:
	python $(OBJBIN)/img2nii.py \
		stim/NoOcc_nonoise_gray1_H*.gif \
		data/NoOcc_nonoise_gray1_H_null.nii \
		data/NoOcc_nonoise_gray1_H_null.txt \
		--null

data/NoOcc_nonoise_gray1_V_null.nii:
	python $(OBJBIN)/img2nii.py \
		stim/NoOcc_nonoise_gray1_V*.gif \
		data/NoOcc_nonoise_gray1_V_null.nii \
		data/NoOcc_nonoise_gray1_V_null.txt \
		--null

data/NoOcc_nonoise_gray2_H_null.nii:
	python $(OBJBIN)/img2nii.py \
		stim/NoOcc_nonoise_gray2_H*.gif \
		data/NoOcc_nonoise_gray2_H_null.nii \
		data/NoOcc_nonoise_gray2_H_null.txt \
		--null		

data/NoOcc_nonoise_gray2_V_null.nii:
	python $(OBJBIN)/img2nii.py \
		stim/NoOcc_nonoise_gray2_V*.gif \
		data/NoOcc_nonoise_gray2_V_null.nii \
		data/NoOcc_nonoise_gray2_V_null.txt \
		--null		


img2nii_Occ: data/Occ_noise_gray1_H_null.nii data/Occ_noise_gray1_V_null.nii data/Occ_noise_gray2_H_null.nii data/Occ_noise_gray2_V_null.nii data/Occ_nonoise_gray1_H_null.nii data/Occ_nonoise_gray1_V_null.nii data/Occ_nonoise_gray2_H_null.nii data/Occ_nonoise_gray2_V_null.nii

data/Occ_noise_gray1_H_null.nii:
	python $(OBJBIN)/img2nii.py \
		stim/Occ_noise_gray1_H*.gif \
		data/Occ_noise_gray1_H_null.nii \
		data/Occ_noise_gray1_H_null.txt \
		--null		

data/Occ_noise_gray1_V_null.nii:
	python $(OBJBIN)/img2nii.py \
		stim/Occ_noise_gray1_V*.gif \
		data/Occ_noise_gray1_V_null.nii \
		data/Occ_noise_gray1_V_null.txt \
		--null		
		
data/Occ_noise_gray2_H_null.nii:
	python $(OBJBIN)/img2nii.py \
		stim/Occ_noise_gray2_H*.gif \
		data/Occ_noise_gray2_H_null.nii \
		data/Occ_noise_gray2_H_null.txt \
		--null		

data/Occ_noise_gray2_V_null.nii:
	python $(OBJBIN)/img2nii.py \
		stim/Occ_noise_gray2_V*.gif \
		data/Occ_noise_gray2_V_null.nii \
		data/Occ_noise_gray2_V_null.txt \
		--null		

data/Occ_nonoise_gray1_H_null.nii:
	python $(OBJBIN)/img2nii.py \
		stim/Occ_nonoise_gray1_H*.gif \
		data/Occ_nonoise_gray1_H_null.nii \
		data/Occ_nonoise_gray1_H_null.txt \
		--null		

data/Occ_nonoise_gray1_V_null.nii:
	python $(OBJBIN)/img2nii.py \
		stim/Occ_nonoise_gray1_V*.gif \
		data/Occ_nonoise_gray1_V_null.nii \
		data/Occ_nonoise_gray1_V_null.txt \
		--null		
		
data/Occ_nonoise_gray2_H_null.nii:
	python $(OBJBIN)/img2nii.py \
		stim/Occ_nonoise_gray2_H*.gif \
		data/Occ_nonoise_gray2_H_null.nii \
		data/Occ_nonoise_gray2_H_null.txt \
		--null		

data/Occ_nonoise_gray2_V_null.nii:
	python $(OBJBIN)/img2nii.py \
		stim/Occ_nonoise_gray2_V*.gif \
		data/Occ_nonoise_gray2_V_null.nii \
		data/Occ_nonoise_gray2_V_null.txt \
		--null		
	