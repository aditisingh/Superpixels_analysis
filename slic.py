# import the necessary packages
from skimage.segmentation import slic
from skimage.segmentation import mark_boundaries
from skimage.util import img_as_float
from skimage import io
import matplotlib.pyplot as plt
import argparse
 
# construct the argument parser and parse the arguments
ap = argparse.ArgumentParser()
ap.add_argument("-i", "--image", required = True, help = "Path to the image")
args = vars(ap.parse_args())
 
# load the image and convert it to a floating point data type
image = img_as_float(io.imread(args["image"]))
 
# loop over the number of segments
#for numSegments in (2000):
# apply SLIC and extract (approximately) the supplied number
# of segments
segments = slic(image, n_segments = 2000, compactness=10, sigma = 1)
 
# show the output of SLIC
fig = plt.figure("Superpixels --20 segments")
ax = fig.add_subplot(1, 1, 1)
ax.imshow(mark_boundaries(image, segments, mode='subpixel'))
plt.axis("off")
 
# show the plots
#plt.savefig('slic1.png')	
plt.show()

