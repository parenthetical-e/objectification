OBJBIN=~/Code/objectify/bin
#
# Calculate some smoothed averaged for the intial images and the beta and  predited images.
#

all: images betas preds 

remove:
	-rm analysis/*
	
# Images
images: analysis/Occ_noise_gray1_H_mean.jpg analysis/NoOcc_noise_gray1_H_mean.jpg analysis/Occ_noise_gray1_V_mean.jpg analysis/NoOcc_noise_gray1_V_mean.jpg

analysis/Occ_noise_gray1_H_mean.jpg:
	python $(OBJBIN)/img2mean.py \
		stim/Occ_noise_gray1_H*.gif \
		analysis/Occ_noise_gray1_H_mean.jpg
		
analysis/NoOcc_noise_gray1_H_mean.jpg:
	python $(OBJBIN)/img2mean.py \
		stim/NoOcc_noise_gray1_H*.gif \
		analysis/NoOcc_noise_gray1_H_mean.jpg

analysis/Occ_noise_gray1_V_mean.jpg:
	python $(OBJBIN)/img2mean.py \
		stim/Occ_noise_gray1_V*.gif \
		analysis/Occ_noise_gray1_V_mean.jpg
		
analysis/NoOcc_noise_gray1_V_mean.jpg:
	python $(OBJBIN)/img2mean.py \
		stim/NoOcc_noise_gray1_V*.gif \
		analysis/NoOcc_noise_gray1_V_mean.jpg

# =======================================================================		
# Betas
betas: beta_p1 beta_p2 beta_p3 beta_p4 beta_p5 beta_p6 beta_p7
	
# from predict1
beta_p1: analysis/NoOcc_confirm_HH_betas.jpg analysis/NoOcc_confirm_HV_betas.jpg
	
analysis/NoOcc_confirm_HH_betas.jpg:
	python $(OBJBIN)/img2mean.py \
		results/*_b_NoOcc_noise_gray1_H_i_NoOcc_noise_gray1_H_betas.jpg \
		analysis/NoOcc_confirm_HH_betas.jpg

analysis/NoOcc_confirm_HV_betas.jpg:
	python $(OBJBIN)/img2mean.py \
		results/*_b_NoOcc_noise_gray1_H_i_NoOcc_noise_gray1_V_betas.jpg \
		analysis/NoOcc_confirm_HV_betas.jpg

# from predict2
beta_p2: analysis/Occ_confirm_HH_betas.jpg analysis/Occ_confirm_HV_betas.jpg
	
analysis/Occ_confirm_HH_betas.jpg:
	python $(OBJBIN)/img2mean.py \
		results/*_b_Occ_noise_gray1_H_i_Occ_noise_gray1_H_betas.jpg \
		analysis/Occ_confirm_HH_betas.jpg

analysis/Occ_confirm_HV_betas.jpg:
	python $(OBJBIN)/img2mean.py \
		results/*_b_Occ_noise_gray1_H_i_Occ_noise_gray1_V_betas.jpg \
		analysis/Occ_confirm_HV_betas.jpg


# from predict3
beta_p3: analysis/Occ_pred_NoOcc_HH_betas.jpg analysis/Occ_pred_NoOcc_HV_betas.jpg
	
analysis/Occ_pred_NoOcc_HH_betas.jpg:
	python $(OBJBIN)/img2mean.py \
		results/*_b_Occ_noise_gray1_H_i_NoOcc_noise_gray1_H_betas.jpg \
		analysis/Occ_pred_NoOcc_HH_betas.jpg

analysis/Occ_pred_NoOcc_HV_betas.jpg:
	python $(OBJBIN)/img2mean.py \
		results/*_b_Occ_noise_gray1_H_i_NoOcc_noise_gray1_V_betas.jpg \
		analysis/Occ_pred_NoOcc_HV_betas.jpg


# from predict4
beta_p4: analysis/NoOcc_pred_Occ_HH_betas.jpg analysis/NoOcc_pred_Occ_HV_betas.jpg
	
analysis/NoOcc_pred_Occ_HH_betas.jpg:
	python $(OBJBIN)/img2mean.py \
		results/*_b_NoOcc_noise_gray1_H_i_Occ_noise_gray1_H_betas.jpg \
		analysis/NoOcc_pred_Occ_HH_betas.jpg

analysis/NoOcc_pred_Occ_HV_betas.jpg:
	python $(OBJBIN)/img2mean.py \
		results/*_b_NoOcc_noise_gray1_H_i_Occ_noise_gray1_V_betas.jpg \
		analysis/NoOcc_pred_Occ_HV_betas.jpg

beta_p5: analysis/Occ_nonoise_pred_noise_HH_betas.jpg analysis/Occ_nonoise_pred_noise_HV_betas.jpg
	
# from predict5
analysis/Occ_nonoise_pred_noise_HH_betas.jpg:
	python $(OBJBIN)/img2mean.py \
		results/*_b_Occ_nonoise_gray1_H_i_Occ_noise_gray1_H_betas.jpg \
		analysis/Occ_nonoise_pred_noise_HH_betas.jpg

analysis/Occ_nonoise_pred_noise_HV_betas.jpg:
	python $(OBJBIN)/img2mean.py \
		results/*_b_Occ_nonoise_gray1_H_i_Occ_noise_gray1_V_betas.jpg \
		analysis/Occ_nonoise_pred_noise_HV_betas.jpg


# from predict6
beta_p6: analysis/NoOcc_null_HH_betas.jpg analysis/NoOcc_null_HV_betas.jpg
	
analysis/NoOcc_null_HH_betas.jpg:
	python $(OBJBIN)/img2mean.py \
		results/*_b_NoOcc_noise_gray1_H_null_i_NoOcc_noise_gray1_H_betas.jpg \
		analysis/NoOcc_null_HH_betas.jpg

analysis/NoOcc_null_HV_betas.jpg:
	python $(OBJBIN)/img2mean.py \
		results/*_b_NoOcc_noise_gray1_H_null_i_NoOcc_noise_gray1_V_betas.jpg \
		analysis/NoOcc_null_HV_betas.jpg

# from predict7
beta_p7: analysis/Occ_null_HH_betas.jpg analysis/Occ_null_HV_betas.jpg
	
analysis/Occ_null_HH_betas.jpg:
	python $(OBJBIN)/img2mean.py \
		results/*_b_Occ_noise_gray1_H_null_i_Occ_noise_gray1_H_betas.jpg \
		analysis/Occ_null_HH_betas.jpg

analysis/Occ_null_HV_betas.jpg:
	python $(OBJBIN)/img2mean.py \
		results/*_b_Occ_noise_gray1_H_null_i_Occ_noise_gray1_V_betas.jpg \
		analysis/Occ_null_HV_betas.jpg
			

# =======================================================================
# Preds
preds: pred_p1 pred_p2 pred_p3 pred_p4 pred_p5 pred_p6 pred_p7
	
# from predict1
pred_p1: analysis/NoOcc_confirm_HH_betas_preds.jpg analysis/NoOcc_confirm_HV_betas_preds.jpg
	
analysis/NoOcc_confirm_HH_betas_preds.jpg:
	python $(OBJBIN)/img2mean.py \
		results/*_b_NoOcc_noise_gray1_H_i_NoOcc_noise_gray1_H_betas_preds.jpg \
		analysis/NoOcc_confirm_HH_betas_preds.jpg

analysis/NoOcc_confirm_HV_betas_preds.jpg:
	python $(OBJBIN)/img2mean.py \
		results/*_b_NoOcc_noise_gray1_H_i_NoOcc_noise_gray1_V_betas_preds.jpg \
		analysis/NoOcc_confirm_HV_betas_preds.jpg

# from predict2
pred_p2: analysis/Occ_confirm_HH_betas_preds.jpg analysis/Occ_confirm_HV_betas_preds.jpg
	
analysis/Occ_confirm_HH_betas_preds.jpg:
	python $(OBJBIN)/img2mean.py \
		results/*_b_Occ_noise_gray1_H_i_Occ_noise_gray1_H_betas_preds.jpg \
		analysis/Occ_confirm_HH_betas_preds.jpg

analysis/Occ_confirm_HV_betas_preds.jpg:
	python $(OBJBIN)/img2mean.py \
		results/*_b_Occ_noise_gray1_H_i_Occ_noise_gray1_V_betas_preds.jpg \
		analysis/Occ_confirm_HV_betas_preds.jpg


# from predict3
pred_p3: analysis/Occ_pred_NoOcc_HH_betas_preds.jpg analysis/Occ_pred_NoOcc_HV_betas_preds.jpg
	
analysis/Occ_pred_NoOcc_HH_betas_preds.jpg:
	python $(OBJBIN)/img2mean.py \
		results/*_b_Occ_noise_gray1_H_i_NoOcc_noise_gray1_H_betas_preds.jpg \
		analysis/Occ_pred_NoOcc_HH_betas_preds.jpg

analysis/Occ_pred_NoOcc_HV_betas_preds.jpg:
	python $(OBJBIN)/img2mean.py \
		results/*_b_Occ_noise_gray1_H_i_NoOcc_noise_gray1_V_betas_preds.jpg \
		analysis/Occ_pred_NoOcc_HV_betas_preds.jpg


# from predict4
pred_p4: analysis/NoOcc_pred_Occ_HH_betas_preds.jpg analysis/NoOcc_pred_Occ_HV_betas_preds.jpg
	
analysis/NoOcc_pred_Occ_HH_betas_preds.jpg:
	python $(OBJBIN)/img2mean.py \
		results/*_b_NoOcc_noise_gray1_H_i_Occ_noise_gray1_H_betas_preds.jpg \
		analysis/NoOcc_pred_Occ_HH_betas_preds.jpg

analysis/NoOcc_pred_Occ_HV_betas_preds.jpg:
	python $(OBJBIN)/img2mean.py \
		results/*_b_NoOcc_noise_gray1_H_i_Occ_noise_gray1_V_betas_preds.jpg \
		analysis/NoOcc_pred_Occ_HV_betas_preds.jpg

pred_p5: analysis/Occ_nonoise_pred_noise_HH_betas_preds.jpg analysis/Occ_nonoise_pred_noise_HV_betas_preds.jpg
	
# from predict5
analysis/Occ_nonoise_pred_noise_HH_betas_preds.jpg:
	python $(OBJBIN)/img2mean.py \
		results/*_b_Occ_nonoise_gray1_H_i_Occ_noise_gray1_H_betas_preds.jpg \
		analysis/Occ_nonoise_pred_noise_HH_betas_preds.jpg

analysis/Occ_nonoise_pred_noise_HV_betas_preds.jpg:
	python $(OBJBIN)/img2mean.py \
		results/*_b_Occ_nonoise_gray1_H_i_Occ_noise_gray1_V_betas_preds.jpg \
		analysis/Occ_nonoise_pred_noise_HV_betas_preds.jpg


# from predict6
pred_p6: analysis/NoOcc_null_HH_betas_preds.jpg analysis/NoOcc_null_HV_betas_preds.jpg
	
analysis/NoOcc_null_HH_betas_preds.jpg:
	python $(OBJBIN)/img2mean.py \
		results/*_b_NoOcc_noise_gray1_H_null_i_NoOcc_noise_gray1_H_betas_preds.jpg \
		analysis/NoOcc_null_HH_betas_preds.jpg

analysis/NoOcc_null_HV_betas_preds.jpg:
	python $(OBJBIN)/img2mean.py \
		results/*_b_NoOcc_noise_gray1_H_null_i_NoOcc_noise_gray1_V_betas_preds.jpg \
		analysis/NoOcc_null_HV_betas_preds.jpg

# from predict7
pred_p7: analysis/Occ_null_HH_betas_preds.jpg analysis/Occ_null_HV_betas_preds.jpg
	
analysis/Occ_null_HH_betas_preds.jpg:
	python $(OBJBIN)/img2mean.py \
		results/*_b_Occ_noise_gray1_H_null_i_Occ_noise_gray1_H_betas_preds.jpg \
		analysis/Occ_null_HH_betas_preds.jpg

analysis/Occ_null_HV_betas_preds.jpg:
	python $(OBJBIN)/img2mean.py \
		results/*_b_Occ_noise_gray1_H_null_i_Occ_noise_gray1_V_betas_preds.jpg \
		analysis/Occ_null_HV_betas_preds.jpg
		