# Test

Test line looks great. Preds shows a very nice reconstruction, while the betas, show the expected beta effect of the training set X.

![Betas](../objectify/test/analysis/noocc_pred_occ_betas.jpg "Betas") 

![Preds](../objectify/test/analysis/occ_pred_occ_preds.jpg "Predicted image") 



# Set 1, a mixture a grey values and white noise.

## Mean images

Occ both Horiz (top) and Vert (bottom) look good 

![Horiz](analysis/Occ_noise_gray1_H_mean.jpg) ![Vert](analysis/Occ_noise_gray1_V_mean.jpg)


So do NoOcc

![Horiz](analysis/NoOcc_noise_gray1_H_mean.jpg) ![Vert](analysis/NoOcc_noise_gray1_V_mean.jpg)

## Confirm

Confirm reconstructs (top) but the betas (bottom) are hard to understand.

![Preds](analysis/NoOcc_confirm_HH_betas_preds.jpg)
![Betas](analysis/NoOcc_confirm_HH_betas.jpg)

## Pred

Same as confirm.  

Looking at NULL runs, the betas seem less structured in these compared to non-null.  But that might be my mistake.  

**TODO**: Need to reprocess betas for better understanding. 

# Set 2, fixed grey with many white samples

Deleted all but the first 100 images.  (Full set remains at `./stim2_all/`)

Died on first attempt at a run.  

Error was `IOError: [Errno 2] No such file or directory: 'results2/b_NoOcc_gray70_i_NoOcc_gray70_betas.jpg'`

Ran out of time for another try. 