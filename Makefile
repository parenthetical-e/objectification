# Run all (pertinent) sims and analyses
# Create files
all: set1 set2
	
# Delete files
remove: remove_set1 remove_set2

# By set

# 1
remove_set1: remove_img2nii remove_predict remove_stats
		
remove_img2nii:
	-rm data/*
			
remove_predict:
	-rm results/*

remove_stats:
	-rm analysis/*

		
set1: img2nii predict stats
	
img2nii:
	$(MAKE) -f img2nii.Makefile all
	$(MAKE) -f null2nii.Makefile all

predict:
	$(MAKE) -f predict.Makefile all
	
stats:
	$(MAKE) -f stats.Makefile all

# 2
# And for the second (more representative) set.
remove_set2: remove_img2nii2 remove_predict2 remove_stats2
	
remove_img2nii2:
	-rm data2/*
			
remove_predict2:
	-rm results2/*

remove_stats2:
	-rm analysis2/*

# Create
set2: img2nii2 predict2 stats2

img2nii2:
	$(MAKE) -f img2nii2.Makefile all

predict2:
	$(MAKE) -f predict2.Makefile all

stats2:
	$(MAKE) -f stats2.Makefile all
