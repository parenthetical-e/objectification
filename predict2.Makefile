OBJBIN=~/Code/objectify/bin

#
# Try and predict images using mock BOLD data.
# 
remove:
	-rm results2/*


all: predict70a predict70b predict70c predict60a predict60b predict60c predict40a predict40b predict40c predict20a predict20b predict20c predict2a predict2b predict2c predicthv

predicthv: data2/NoOcc_noise_gray40_H.nii
	python $(OBJBIN)/predict.py \
		data2/NoOcc_noise_gray40_H.nii \
		data2/NoOcc_noise_gray40_H.txt \
		stim2/40/NoOcc_gray40_V_*.gif \
		results2/b_NoOcc_gray40_H_i_NoOcc_gray40_V_betas.jpg \
		results2/b_NoOcc_gray40_H_i_NoOcc_gray40_V_betas_preds.jpg \


# Grey levels...	
predict70a: data2/NoOcc_noise_gray70_H.nii
	python $(OBJBIN)/predict.py \
		data2/NoOcc_noise_gray70_H.nii \
		data2/NoOcc_noise_gray70_H.txt \
		stim2/70/NoOcc_gray70_H_*.gif \
		results2/b_NoOcc_gray70_i_NoOcc_gray70_betas.jpg \
		results2/b_NoOcc_gray70_i_NoOcc_gray70_betas_preds.jpg \		
		
predict70b: data2/Occ_noise_gray70_H.nii
	python $(OBJBIN)/predict.py \
		data2/Occ_noise_gray70_H.nii \
		data2/Occ_noise_gray70_H.txt \
		stim2/70/Occ_gray70_H_*.gif \
		results2/b_Occ_gray70_i_Occ_gray70_betas.jpg \
		results2/b_Occ_gray70_i_Occ_gray70_betas_preds.jpg \


predict70c: data2/NoOcc_noise_gray70_H.nii
	python $(OBJBIN)/predict.py \
		data2/NoOcc_noise_gray70_H.nii \
		data2/NoOcc_noise_gray70_H.txt \
		stim2/70/Occ_gray70_H_*.gif \
		results2/b_NoOcc_gray70_i_Occ_gray70_betas.jpg \
		results2/b_NoOcc_gray70_i_Occ_gray70_betas_preds.jpg \

# 60
predict60a: data2/NoOcc_noise_gray60_H.nii
	python $(OBJBIN)/predict.py \
		data2/NoOcc_noise_gray60_H.nii \
		data2/NoOcc_noise_gray60_H.txt \
		stim2/60/NoOcc_gray60_H_*.gif \
		results2/b_NoOcc_gray60_i_NoOcc_gray60_betas.jpg \
		results2/b_NoOcc_gray60_i_NoOcc_gray60_betas_preds.jpg \
		
predict60b: data2/Occ_noise_gray60_H.nii
	python $(OBJBIN)/predict.py \
		data2/Occ_noise_gray60_H.nii \
		data2/Occ_noise_gray60_H.txt \
		stim2/60/Occ_gray60_H_*.gif \
		results2/b_Occ_gray60_i_Occ_gray60_betas.jpg \
		results2/b_Occ_gray60_i_Occ_gray60_betas_preds.jpg \


predict60c: data2/NoOcc_noise_gray60_H.nii
	python $(OBJBIN)/predict.py \
		data2/NoOcc_noise_gray60_H.nii \
		data2/NoOcc_noise_gray60_H.txt \
		stim2/60/Occ_gray60_H_*.gif \
		results2/b_NoOcc_gray60_i_Occ_gray60_betas.jpg \
		results2/b_NoOcc_gray60_i_Occ_gray60_betas_preds.jpg \

# 40		
predict40a: data2/NoOcc_noise_gray40_H.nii
	python $(OBJBIN)/predict.py \
		data2/NoOcc_noise_gray40_H.nii \
		data2/NoOcc_noise_gray40_H.txt \
		stim2/40/NoOcc_gray40_H_*.gif \
		results2/b_NoOcc_gray40_i_NoOcc_gray40_betas.jpg \
		results2/b_NoOcc_gray40_i_NoOcc_gray40_betas_preds.jpg \		
		
predict40b: data2/Occ_noise_gray40_H.nii
	python $(OBJBIN)/predict.py \
		data2/Occ_noise_gray40_H.nii \
		data2/Occ_noise_gray40_H.txt \
		stim2/40/Occ_gray40_H_*.gif \
		results2/b_Occ_gray40_i_Occ_gray40_betas.jpg \
		results2/b_Occ_gray40_i_Occ_gray40_betas_preds.jpg \


predict40c: data2/NoOcc_noise_gray40_H.nii
	python $(OBJBIN)/predict.py \
		data2/NoOcc_noise_gray40_H.nii \
		data2/NoOcc_noise_gray40_H.txt \
		stim2/40/Occ_gray40_H_*.gif \
		results2/b_NoOcc_gray40_i_Occ_gray40_betas.jpg \
		results2/b_NoOcc_gray40_i_Occ_gray40_betas_preds.jpg \
		
# 20 
predict20a: data2/NoOcc_noise_gray20_H.nii
	python $(OBJBIN)/predict.py \
		data2/NoOcc_noise_gray20_H.nii \
		data2/NoOcc_noise_gray20_H.txt \
		stim2/20/NoOcc_gray20_H_*.gif \
		results2/b_NoOcc_gray20_i_NoOcc_gray20_betas.jpg \
		results2/b_NoOcc_gray20_i_NoOcc_gray20_betas_preds.jpg \		
		
predict20b: data2/Occ_noise_gray20_H.nii
	python $(OBJBIN)/predict.py \
		data2/Occ_noise_gray20_H.nii \
		data2/Occ_noise_gray20_H.txt \
		stim2/20/Occ_gray20_H_*.gif \
		results2/b_Occ_gray20_i_Occ_gray20_betas.jpg \
		results2/b_Occ_gray20_i_Occ_gray20_betas_preds.jpg \


predict20c: data2/NoOcc_noise_gray20_H.nii
	python $(OBJBIN)/predict.py \
		data2/NoOcc_noise_gray20_H.nii \
		data2/NoOcc_noise_gray20_H.txt \
		stim2/20/Occ_gray20_H_*.gif \
		results2/b_NoOcc_gray20_i_Occ_gray20_betas.jpg \
		results2/b_NoOcc_gray20_i_Occ_gray20_betas_preds.jpg \

# 2
predict2a: data2/NoOcc_noise_gray2_H.nii
	python $(OBJBIN)/predict.py \
		data2/NoOcc_noise_gray2_H.nii \
		data2/NoOcc_noise_gray2_H.txt \
		stim2/2/NoOcc_gray2_H_*.gif \
		results2/b_NoOcc_gray2_i_NoOcc_gray2_betas.jpg \
		results2/b_NoOcc_gray2_i_NoOcc_gray2_betas_preds.jpg \		
		
predict2b: data2/Occ_noise_gray2_H.nii
	python $(OBJBIN)/predict.py \
		data2/Occ_noise_gray2_H.nii \
		data2/Occ_noise_gray2_H.txt \
		stim2/2/Occ_gray2_H_*.gif \
		results2/b_Occ_gray2_i_Occ_gray2_betas.jpg \
		results2/b_Occ_gray2_i_Occ_gray2_betas_preds.jpg \						


predict2c: data2/NoOcc_noise_gray2_H.nii
	python $(OBJBIN)/predict.py \
		data2/NoOcc_noise_gray2_H.nii \
		data2/NoOcc_noise_gray2_H.txt \
		stim2/2/Occ_gray2_H_*.gif \
		results2/b_NoOcc_gray2_i_Occ_gray2_betas.jpg \
		results2/b_NoOcc_gray2_i_Occ_gray2_betas_preds.jpg \
