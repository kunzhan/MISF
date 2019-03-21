## Multimodal Image Seamless Fusion
An iterative joint bilateral filter is used to obtain a natural weight map. Images from different modalities are merged by a weighted-sum rule in the spatial domain. Saliency maps are determined by the gradient of the pairwise raw images. Comparing the pairwise values of saliency maps, a coarse weight map is attained to determine which pixel is preferred. Since such coarse weight map obtained by pairwise comparison is not a natural weight map subjectively,  *i.e.*, it is inconsistent with human visual system, the weight map is modified by using an iterative joint bilateral filter. With the iterative joint bilateral filter, the weight map becomes natural. We use the refined weight map to obtain the fused image and we seamlessly merge images from different modalities effectively. Experiments are conducted on several pairs of multimodal images to verify the effectiveness and superiority of the proposed image fusion algorithm comparing to the state-of-the-art methods.

## Citation
We appreciate it if you cite the following paper:
```
@Article{KUN2019MISF,
  author =  {Zhan, Kun and Kong, Lingwen and Liu, Bo and He, Ying},
  title =   {Multimodal image seamless fusion},
  journal = {Journal of Electronic Imaging},
  year =    {2019},
  volume =  {28},
  number =  {0},
  pages =   {00}
}

```

## Contact
https://kunzhan.github.io/

If you have any questions, feel free to contact me. (Email: `ice.echo#gmail.com`)