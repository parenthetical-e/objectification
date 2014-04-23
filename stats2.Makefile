OBJBIN=~/Code/objectify/bin
#
# Calculate some smoothed averaged for the intial images and the beta and  predited images.
#

all: images betas preds 

remove:
	-rm analysis2/*
	
# Images
images: analysis2/NoOcc_gray40_H_mean.gif

analysis2/NoOcc_gray70_H_mean.gif:
	python $(OBJBIN)/img2mean.py \
	stim2/70/NoOcc_gray70_H_*.gif \
	analysis2/NoOcc_gray70_H_mean.gif

analysis2/NoOcc_gray60_H_mean.gif:
	python $(OBJBIN)/img2mean.py \
	stim2/60/NoOcc_gray60_H_*.gif \
	analysis2/NoOcc_gray60_H_mean.gif

analysis2/NoOcc_gray40_H_mean.gif:
	python $(OBJBIN)/img2mean.py \
	stim2/40/NoOcc_gray40_H_*.gif \
	analysis2/NoOcc_gray40_H_mean.gif

analysis2/NoOcc_gray20_H_mean.gif:
	python $(OBJBIN)/img2mean.py \
	stim2/20/NoOcc_gray20_H_*.gif \
	analysis2/NoOcc_gray20_H_mean.gif

analysis2/NoOcc_gray2_H_mean.gif:
	python $(OBJBIN)/img2mean.py \
	stim2/2/NoOcc_gray2_H_*.gif \
	analysis2/NoOcc_gray2_H_mean.gif
	
# =======================================================================		
# Betas
betas: beta_p1 beta_p2 beta_p3 beta_p4 beta_p5 beta_p6 beta_p7

betas_hv: results2/b_NoOcc_gray40_H_i_NoOcc_gray40_V_betas.jpg results2/b_NoOcc_gray40_H_i_NoOcc_gray40_V_betas_preds.jpg
	python $(OBJBIN)/img2mean.py \
		results2/*_b_NoOcc_gray40_H_i_NoOcc_gray40_V_betas.jpg \
		analysis2/NoOcc_gray40_HV_mean_beta.jpg 
	python $(OBJBIN)/img2mean.py \	
		results2/*_b_NoOcc_gray40_H_i_NoOcc_gray40_V_betas_preds.jpg \
		analysis2/NoOcc_gray40_HV_mean_betas_preds.jpg 

betas_70:
	# NoOcc confirm
	python $(OBJBIN)/img2mean.py \
		results2/*_b_NoOcc_gray70_i_NoOcc_gray70_betas.jpg \
		analysis2/NoOcc_gray70_confirm_mean_betas.jpg \
	python $(OBJBIN)/img2mean.py \
		results2/*_b_NoOcc_gray70_i_NoOcc_gray70_betas_preds.jpg \
		analysis2/NoOcc_gray70_confirm_mean_betas_preds.jpg \
	# Occ confirm
	python $(OBJBIN)/img2mean.py \
		results2/*_b_Occ_gray70_i_Occ_gray70_betas.jpg \
		analysis2/Occ_gray70_confirm_mean_betas.jpg \
	python $(OBJBIN)/img2mean.py \
		results2/*_b_Occ_gray70_i_Occ_gray70_betas_preds.jpg \
		analysis2/Occ_gray70_confirm_mean_betas_preds.jpg
	# NoOcc pred Occ
	python $(OBJBIN)/img2mean.py \
		results2/*_b_NoOcc_gray70_i_Occ_gray70_betas.jpg \
		results2/NoOcc_pred_Occ_grey70_mean_betas.jpg \
	python $(OBJBIN)/img2mean.py \
		results2/*_b_NoOcc_gray70_i_Occ_gray70_betas_preds.jpg \
		results2/NoOcc_pred_Occ_grey70_mean_betas_preds.jpg \


betas_60:
	# NoOcc confirm
	python $(OBJBIN)/img2mean.py \
		results2/*_b_NoOcc_gray60_i_NoOcc_gray60_betas.jpg \
		analysis2/NoOcc_gray60_confirm_mean_betas.jpg \
	python $(OBJBIN)/img2mean.py \
		results2/*_b_NoOcc_gray60_i_NoOcc_gray60_betas_preds.jpg \
		analysis2/NoOcc_gray60_confirm_mean_betas_preds.jpg \
	# Occ confirm
	python $(OBJBIN)/img2mean.py \
		results2/*_b_Occ_gray60_i_Occ_gray60_betas.jpg \
		analysis2/Occ_gray60_confirm_mean_betas.jpg \
	python $(OBJBIN)/img2mean.py \
		results2/*_b_Occ_gray60_i_Occ_gray60_betas_preds.jpg \
		analysis2/Occ_gray60_confirm_mean_betas_preds.jpg
	# NoOcc pred Occ
	python $(OBJBIN)/img2mean.py \
		results2/*_b_NoOcc_gray60_i_Occ_gray60_betas.jpg \
		results2/NoOcc_pred_Occ_grey60_mean_betas.jpg \
	python $(OBJBIN)/img2mean.py \
		results2/*_b_NoOcc_gray60_i_Occ_gray60_betas_preds.jpg \
		results2/NoOcc_pred_Occ_grey60_mean_betas_preds.jpg \


betas_40:
	# NoOcc confirm
	python $(OBJBIN)/img2mean.py \
		results2/*_b_NoOcc_gray40_i_NoOcc_gray40_betas.jpg \
		analysis2/NoOcc_gray40_confirm_mean_betas.jpg \
	python $(OBJBIN)/img2mean.py \
		results2/*_b_NoOcc_gray40_i_NoOcc_gray40_betas_preds.jpg \
		analysis2/NoOcc_gray40_confirm_mean_betas_preds.jpg \
	# Occ confirm
	python $(OBJBIN)/img2mean.py \
		results2/*_b_Occ_gray40_i_Occ_gray40_betas.jpg \
		analysis2/Occ_gray40_confirm_mean_betas.jpg \
	python $(OBJBIN)/img2mean.py \
		results2/*_b_Occ_gray40_i_Occ_gray40_betas_preds.jpg \
		analysis2/Occ_gray40_confirm_mean_betas_preds.jpg
	# NoOcc pred Occ
	python $(OBJBIN)/img2mean.py \
		results2/*_b_NoOcc_gray40_i_Occ_gray40_betas.jpg \
		results2/NoOcc_pred_Occ_grey40_mean_betas.jpg \
	python $(OBJBIN)/img2mean.py \
		results2/*_b_NoOcc_gray40_i_Occ_gray40_betas_preds.jpg \
		results2/NoOcc_pred_Occ_grey40_mean_betas_preds.jpg \


betas_20:
	# NoOcc confirm
	python $(OBJBIN)/img2mean.py \
		results2/*_b_NoOcc_gray20_i_NoOcc_gray20_betas.jpg \
		analysis2/NoOcc_gray20_confirm_mean_betas.jpg \
	python $(OBJBIN)/img2mean.py \
		results2/*_b_NoOcc_gray20_i_NoOcc_gray20_betas_preds.jpg \
		analysis2/NoOcc_gray20_confirm_mean_betas_preds.jpg \
	# Occ confirm
	python $(OBJBIN)/img2mean.py \
		results2/*_b_Occ_gray20_i_Occ_gray20_betas.jpg \
		analysis2/Occ_gray20_confirm_mean_betas.jpg \
	python $(OBJBIN)/img2mean.py \
		results2/*_b_Occ_gray20_i_Occ_gray20_betas_preds.jpg \
		analysis2/Occ_gray20_confirm_mean_betas_preds.jpg
	# NoOcc pred Occ
	python $(OBJBIN)/img2mean.py \
		results2/*_b_NoOcc_gray20_i_Occ_gray20_betas.jpg \
		results2/NoOcc_pred_Occ_grey20_mean_betas.jpg \
	python $(OBJBIN)/img2mean.py \
		results2/*_b_NoOcc_gray20_i_Occ_gray20_betas_preds.jpg \
		results2/NoOcc_pred_Occ_grey20_mean_betas_preds.jpg \

betas_2:
	# NoOcc confirm
	python $(OBJBIN)/img2mean.py \
		results2/*_b_NoOcc_gray2_i_NoOcc_gray2_betas.jpg \
		analysis2/NoOcc_gray2_confirm_mean_betas.jpg \
	python $(OBJBIN)/img2mean.py \
		results2/*_b_NoOcc_gray2_i_NoOcc_gray2_betas_preds.jpg \
		analysis2/NoOcc_gray2_confirm_mean_betas_preds.jpg \
	# Occ confirm
	python $(OBJBIN)/img2mean.py \
		results2/*_b_Occ_gray2_i_Occ_gray2_betas.jpg \
		analysis2/Occ_gray2_confirm_mean_betas.jpg \
	python $(OBJBIN)/img2mean.py \
		results2/*_b_Occ_gray2_i_Occ_gray2_betas_preds.jpg \
		analysis2/Occ_gray2_confirm_mean_betas_preds.jpg
	# NoOcc pred Occ
	python $(OBJBIN)/img2mean.py \
		results2/*_b_NoOcc_gray2_i_Occ_gray2_betas.jpg \
		results2/NoOcc_pred_Occ_grey2_mean_betas.jpg \
	python $(OBJBIN)/img2mean.py \
		results2/*_b_NoOcc_gray2_i_Occ_gray2_betas_preds.jpg \
		results2/NoOcc_pred_Occ_grey2_mean_betas_preds.jpg \



