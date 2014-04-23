OBJBIN=~/Code/objectify/bin

#
# Try and predict images using mock BOLD data.
# 
remove:
	-rm results/*

test: test_predict
		
test_predict: data/test.nii data/test.txt
	python $(OBJBIN)/predict.py \
		data/test.nii \
		data/test.txt \
		stim/Occ_noise_gray1_V_*.gif \
		results/test_betas.jpg \
		results/test_preds.gif

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

all: predict1 predict2 predict3 predict4 predict5 predict6 predict7
	
	
predict1: data/NoOcc_noise_gray1_H.nii
	# NoOcc and bold and image
	python $(OBJBIN)/predict.py \
		data/NoOcc_noise_gray1_H.nii \
		data/NoOcc_noise_gray1_H.txt \
		stim/NoOcc_noise_gray1_H*.gif \
		results/b_NoOcc_noise_gray1_H_i_NoOcc_noise_gray1_H_betas.jpg \
		results/b_NoOcc_noise_gray1_H_i_NoOcc_noise_gray1_H_betas_preds.jpg
	# NoOcc b:H  i:V
	python $(OBJBIN)/predict.py \
		data/NoOcc_noise_gray1_H.nii \
		data/NoOcc_noise_gray1_H.txt \
		stim/NoOcc_noise_gray1_V*.gif \
		results/b_NoOcc_noise_gray1_H_i_NoOcc_noise_gray1_V_betas.jpg \
		results/b_NoOcc_noise_gray1_H_i_NoOcc_noise_gray1_V_betas_preds.jpg


predict2: data/Occ_noise_gray1_H.nii
	# Occ as bold and image 
	# H
	python $(OBJBIN)/predict.py \
		data/Occ_noise_gray1_H.nii \
		data/Occ_noise_gray1_H.txt \
		stim/Occ_noise_gray1_H*.gif \
		results/b_Occ_noise_gray1_H_i_Occ_noise_gray1_H_betas.jpg \
		results/b_Occ_noise_gray1_H_i_Occ_noise_gray1_H_betas_preds.jpg
	# Occ b:H  i:V
	python $(OBJBIN)/predict.py \
		data/Occ_noise_gray1_H.nii \
		data/Occ_noise_gray1_H.txt \
		stim/Occ_noise_gray1_V*.gif \
		results/b_Occ_noise_gray1_H_i_Occ_noise_gray1_V_betas.jpg \
		results/b_Occ_noise_gray1_H_i_Occ_noise_gray1_V_betas_preds.jpg


predict3: data/Occ_noise_gray1_H.nii
	# set 3
	# Occ BOLD. NoOcc as image.
	python $(OBJBIN)/predict.py \
		data/Occ_noise_gray1_H.nii \
		data/Occ_noise_gray1_H.txt \
		stim/NoOcc_noise_gray1_H*.gif \
		results/b_Occ_noise_gray1_H_i_NoOcc_noise_gray1_H_betas.jpg \
		results/b_Occ_noise_gray1_H_i_NoOcc_noise_gray1_H_betas_preds.jpg
	# Occ b:H  i:V
	python $(OBJBIN)/predict.py \
		data/Occ_noise_gray1_H.nii \
		data/Occ_noise_gray1_H.txt \
		stim/NoOcc_noise_gray1_V*.gif \
		results/b_Occ_noise_gray1_H_i_NoOcc_noise_gray1_V_betas.jpg \
		results/b_Occ_noise_gray1_H_i_NoOcc_noise_gray1_V_betas_preds.jpg


predict4: data/NoOcc_noise_gray1_H.nii
	# set 3
	# NoOcc BOLD. Occ as image.
	python $(OBJBIN)/predict.py \
		data/NoOcc_noise_gray1_H.nii \
		data/NoOcc_noise_gray1_H.txt \
		stim/Occ_noise_gray1_H*.gif \
		results/b_NoOcc_noise_gray1_H_i_Occ_noise_gray1_H_betas.jpg \
		results/b_NoOcc_noise_gray1_H_i_Occ_noise_gray1_H_betas_preds.jpg
	# Occ b:H  i:V
	python $(OBJBIN)/predict.py \
		data/NoOcc_noise_gray1_H.nii \
		data/NoOcc_noise_gray1_H.txt \
		stim/Occ_noise_gray1_V*.gif \
		results/b_NoOcc_noise_gray1_H_i_Occ_noise_gray1_V_betas.jpg \
		results/b_NoOcc_noise_gray1_H_i_Occ_noise_gray1_V_betas_preds.jpg


predict5: data/Occ_nonoise_gray1_H.nii 
	# No stim noise bold versus noise image
	# Occ b:H  i:H
	python $(OBJBIN)/predict.py \
		data/Occ_nonoise_gray1_H.nii \
		data/Occ_nonoise_gray1_H.txt \
		stim/Occ_noise_gray1_H*.gif \
		results/b_Occ_nonoise_gray1_H_i_Occ_noise_gray1_H_betas.jpg \
		results/b_Occ_nonoise_gray1_H_i_Occ_noise_gray1_H_betas_preds.jpg
	# Occ b:H  i:V
	python $(OBJBIN)/predict.py \
		data/Occ_nonoise_gray1_H.nii \
		data/Occ_nonoise_gray1_H.txt \
		stim/Occ_noise_gray1_V*.gif \
		results/b_Occ_nonoise_gray1_H_i_Occ_noise_gray1_V_betas.jpg \
		results/b_Occ_nonoise_gray1_H_i_Occ_noise_gray1_V_betas_preds.jpg

# =======================================================================
# NULL image tests
# =======================================================================
predict6: data/NoOcc_noise_gray1_H_null.nii
	# NoOcc and bold and image
	# H and H
	python $(OBJBIN)/predict.py \
		data/NoOcc_noise_gray1_H_null.nii \
		data/NoOcc_noise_gray1_H_null.txt \
		stim/NoOcc_noise_gray1_H*.gif \
		results/b_NoOcc_noise_gray1_H_null_i_NoOcc_noise_gray1_H_betas.jpg \
		results/b_NoOcc_noise_gray1_H_null_i_NoOcc_noise_gray1_H_betas_preds.jpg
	# H and V
	python $(OBJBIN)/predict.py \
		data/NoOcc_noise_gray1_H_null.nii \
		data/NoOcc_noise_gray1_H_null.txt \
		stim/NoOcc_noise_gray1_V*.gif \
		results/b_NoOcc_noise_gray1_H_null_i_NoOcc_noise_gray1_V_betas.jpg \
		results/b_NoOcc_noise_gray1_H_null_i_NoOcc_noise_gray1_V_betas_preds.jpg


predict7: data/Occ_noise_gray1_H_null.nii 
	# Occ as bold and image 
	# H and H
	python $(OBJBIN)/predict.py \
		data/Occ_noise_gray1_H_null.nii \
		data/Occ_noise_gray1_H_null.txt \
		stim/Occ_noise_gray1_H*.gif \
		results/b_Occ_noise_gray1_H_null_i_Occ_noise_gray1_H_betas.jpg \
		results/b_Occ_noise_gray1_H_null_i_Occ_noise_gray1_H_betas_preds.jpg
	# H and V 
	python $(OBJBIN)/predict.py \
		data/Occ_noise_gray1_H_null.nii \
		data/Occ_noise_gray1_H_null.txt \
		stim/Occ_noise_gray1_V*.gif \
		results/b_Occ_noise_gray1_H_null_i_Occ_noise_gray1_V_betas.jpg \
		results/b_Occ_noise_gray1_H_null_i_Occ_noise_gray1_V_betas_preds.jpg
