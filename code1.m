RGB = imread('dailyworldfacts.tiff');
RGB = rgb2gray(RGB);
imshow(RGB)

J = imnoise(RGB,'salt & pepper',0.02);
figure, imshow(J)

K = filter2(fspecial('average',3),J)/255;
figure, imshow(K)

L = medfilt2(J,[3 3]);
figure, imshow(L)

M = wiener2(J,[5 5]);
figure, imshow(M)

N = imread('Example_lena_denoise_noisy.jpg')
N = rgb2gray(N)
test = wiener2(N,[5 5]);
figure, imshow(test)