%% Task 2: Feature Calculation 
%% TASK 1 ON FEATURE CALCULATION
f = imread('ImgPIA.jpg');
figure;
imshow(f);
f = rgb2gray(f);
title('OriginalImage')
 
ImageFolder ='C:\Users\Computing\Documents\MATLAB';
%  % this loop will take 5 pictures and save them in the Matlab folder 
% 
%     file_name = sprintf('Image%d.png', 0)% name Image with a sequence of number, ex Image1.png , Image2.png....
%     fullFileName = fullfile(ImageFolder, file_name);
%     imwrite(f,file_name,'png') %save the image as a Portable Graphics Format file(png)into the MatLab
%     pause(1); % pause for one second
%     imshow(f) % display the image for every second
%     imgName = [ImageFolder,'\Image_',num2str(0),'.png'];
 
%% 
 
F = fft2(f,256,256);
figure;
imshow(F)
%% 
I = ifft2(F,256,256);
figure;
imshow(I);
%% 
% width = 100; height = 300;
% [rows, columns] = size(f);
% left = columns/2 - width/2;
% top = rows/2 - height/2;
% f1 = imcrop(f, [left, top, width, height]);
% subplot(1,2,1);imshow(f1);
% 
% width = 600; height = 300;
% [rows, columns] = size(f);
% left = columns/2 - width/2;
% top = rows/2 - height/2;
% f2 = imcrop(f, [left, top, width, height]);
% subplot(1,2,2);imshow(f2);
 
 
% SEGMENT INTO SECTION 
I = f;
f1=I(1:size(I,1)/2,1:size(I,2)/2,:);subplot(2,2,1);imshow(f1);
subplot(2,2,1);
title('fig1')
f2=I(size(I,1)/2+1:size(I,1),1:size(I,2)/2,:);subplot(2,2,2);imshow(f2);
subplot(2,2,2);
title('fig2')
f3=I(1:size(I,1)/2,size(I,2)/2+1:size(I,2),:);subplot(2,2,3);imshow(f3);
subplot(2,2,3);
title('fig3')
f4=I(size(I,1)/2+1:size(I,1),size(I,2)/2+1:size(I,2),:);subplot(2,2,4);imshow(f4);
subplot(2,2,4);
title('fig4')
 
%% 
F = fft2(f,256,256);
figure;
imshow(F);
F = fftshift(F); % Center FFT
figure;
imshow(F);
% Measure the minimum and maximum value of the transform amplitude
min(min(abs(F)))
max(max(abs(F)))
figure;
imshow(abs(F),[0 100]); colormap(jet); colorbar
figure;
imshow(log(1+abs(F)),[0,3]); colormap(jet); colorbar
% Look at the phases
figure;
imshow(angle(F),[-pi,pi]); colormap(jet); colorbar
 
I = ifft2(F,256,256);
figure;
imshow(I);
 
%% 
F = fft2(f,256,256);
figure;
imshow(F);
F = fftshift(F); % Center FFT
figure;
imshow(F);
% Measure the minimum and maximum value of the transform amplitude
min(min(abs(F)))
max(max(abs(F)))
figure;
imshow(abs(F),[0 100]); colormap(jet); colorbar
figure;
imshow(log(1+abs(F)),[0,3]); colormap(jet); colorbar
% Look at the phases
figure;
imshow(angle(F),[-pi,pi]); colormap(jet); colorbar
 
F = fft2(f,256,256);
figure;
imshow(F);
 
I = ifft2(F,256,256);
figure;
imshow(I);
%% 
 
% TASK 1: BY SELECTING IT'S FEATURES
 
figure;
imshow(f);
figure;
offsets = [0 1];
glcm_0_s = graycomatrix(f, 'offset', offsets,'NumLevels', 256, 'Symmetric',true);
subplot(2,2,1);imshow(glcm_0_s); 
title('At 0 degrees, offset of 1')
 
offsets = [-1 1];
glcm_0_s = graycomatrix(f, 'offset', offsets,'NumLevels', 256, 'Symmetric',true);
subplot(2,2,2);imshow(glcm_0_s);
title('At 45 degrees, offset of 1')
 
offsets = [-1 0];
glcm_0_s = graycomatrix(f, 'offset', offsets,'NumLevels', 256, 'Symmetric',true);
subplot(2,2,3);imshow(glcm_0_s);
title('At 90 degrees, offset of 1')
 
offsets = [-1 -1];
glcm_0_s = graycomatrix(f, 'offset', offsets,'NumLevels', 256, 'Symmetric',true);
subplot(2,2,4);imshow(glcm_0_s);
title('At 135 degrees, offset of 1')
 
figure;
offsets = [0 2];
glcm_0_s = graycomatrix(f, 'offset', offsets,'NumLevels', 256, 'Symmetric',true);
subplot(2,2,1);imshow(glcm_0_s); 
title('At 0 degrees, offset of 1')
 
offsets = [-2 2];
glcm_0_s = graycomatrix(f, 'offset', offsets,'NumLevels', 256, 'Symmetric',true);
subplot(2,2,2);imshow(glcm_0_s);
title('At 45 degrees, offset of 1')
 
offsets = [-2 0];
glcm_0_s = graycomatrix(f, 'offset', offsets,'NumLevels', 256, 'Symmetric',true);
subplot(2,2,3);imshow(glcm_0_s);
title('At 90 degrees, offset of 1')
 
offsets = [-2 -2];
glcm_0_s = graycomatrix(f, 'offset', offsets,'NumLevels', 256, 'Symmetric',true);
subplot(2,2,4);imshow(glcm_0_s);
title('At 135 degrees, offset of 1')
 
figure;
offsets = [0 3];
glcm_0_s = graycomatrix(f, 'offset', offsets,'NumLevels', 256, 'Symmetric',true);
subplot(2,2,1);imshow(glcm_0_s); 
title('At 0 degrees, offset of 3')
 
offsets = [-3 3];
glcm_0_s = graycomatrix(f, 'offset', offsets,'NumLevels', 256, 'Symmetric',true);
subplot(2,2,2);imshow(glcm_0_s);
title('At 45 degrees, offset of 3')
 
offsets = [-3 0];
glcm_0_s = graycomatrix(f, 'offset', offsets,'NumLevels', 256, 'Symmetric',true);
subplot(2,2,3);imshow(glcm_0_s);
title('At 90 degrees, offset of 3')
 
offsets = [-3 -3];
glcm_0_s = graycomatrix(f, 'offset', offsets,'NumLevels', 256, 'Symmetric',true);
subplot(2,2,4);imshow(glcm_0_s);
title('At 135 degrees, offset of 3')
 
figure;
offsets = [0 4];
glcm_0_s = graycomatrix(f, 'offset', offsets,'NumLevels', 256, 'Symmetric',true);
subplot(2,2,1);imshow(glcm_0_s); 
title('At 0 degrees, offset of 1')
 
offsets = [-4 4];
glcm_0_s = graycomatrix(f, 'offset', offsets,'NumLevels', 256, 'Symmetric',true);
subplot(2,2,2);imshow(glcm_0_s);
title('At 45 degrees, offset of 1')
 
offsets = [-4 0];
glcm_0_s = graycomatrix(f, 'offset', offsets,'NumLevels', 256, 'Symmetric',true);
subplot(2,2,3);imshow(glcm_0_s);
title('At 90 degrees, offset of 1')
 
offsets = [-4 -4];
glcm_0_s = graycomatrix(f, 'offset', offsets,'NumLevels', 256, 'Symmetric',true);
subplot(2,2,4);imshow(glcm_0_s);
title('At 135 degrees, offset of 1');
 
% Header = ["Degree";"Offset1";"Offset2";"Offset3";"Offset4"];
 
Degree = [0;45;90;135];
Offset1 = [0 1; -1 1; -1 0; -1 -1];
Offset2 = [0 2; -2 2; -2 0; -2 -2];
Offset3 = [0 3; -3 3; -3 0; -3 -3];
Offset4 = [0 4; -4 4; -4 0; -4 -4];
T = table(Degree,Offset1,Offset2,Offset3, Offset4)
writetable(T,'test.xlsx','Sheet',1);
 
 
%% 
stats_0_s = graycoprops(glcm_0_s,{'contrast','correlation','energy','homogeneity'})
% stats_0_ns = graycoprops(glcm_0_ns,{'contrast','correlation','energy','homogeneity'})
 
stats = GLCM_Features(glcm_0_s)
 
%% GRAY LEVEL RUN LENGTH MATRIX
% THIS PROGRAM SELECT A ROI, QUNATIZE TO LOWER BIT LEVEL AND COMPUTING 
% GRAY LEVEL RUN LENGTH MATRIX AND SEVEN TEXTURE PARAMETERS VIZ., 
%    1. SHORT RUN EMPHASIS (SRE) 
%    2. LONG RUN EMPHASIS(LRE)
%    3. GRAY LEVEL NON-UNIFORMITY (GLN)
%    4. RUN PERCENTAGE (RP)
%    5. RUN LENGTH NON-UNIFORMITY (RLN)
%    6. LOW GRAY LEVEL RUN EMPHASIS (LGRE)
%    7. HIGH GRAY LEVEL RUN EMPHASIS (HGRE)
%--------------------------------------------------------------------------
im = imread('ImgPIA.jpg');
figure
imshow(im)
im1= f4 %imcrop(im);
im2=im1(1:128,1:128);
im2=double(im2);
[m,n]=size(im2);
 
% Report is needed
% --------- IMAGE QUANTIZATION TO 4 BITS (16 GRAY LEVELS)------------------
bits = 16; % 4 bits - 16, 6 bits - 32, 8 bits - 64, 
 
Imax=max(max(im2));
Imin=min(min(im2));
newim=im2-Imin;
Nmax=max(max(newim));
Nmin=min(min(newim));
Q=round(Nmax/bits);
[m,n]=size(newim);
Quant=0;
for i=1:m
    for j=1:n
        I = newim(i,j);
        for B = 1:bits
            if (I>Quant)&(I<=Quant+Q)
                newim(i,j)=B/bits;
                Quant=Quant+Q;
            end            
end
    end
end
newmax=max(max(newim));
newim1=newim/newmax;
newim2=round(newim1*bits)+1;
dir=0; 
dist1=1;
if (dir == 1)
    newim2=newim2';
end
mx = max(max(newim2));
mn = min(min(newim2));
gl = (mx-mn)+1;
[p,q] = size(newim2);
n=p*q;
count=1;
c=1;
col=1;
grl(mx,p)=0;
maxcount(p*q)=0;
mc=0;
%---------------------COMPUTING GRAY LEVEL RUN LENGTH MATRIX---------------
for j=1:p
    for k=1:q-dist1
        mc=mc+1;
        g=newim2(j,k);
        f=newim2(j,k+dist1);
        if (g==f)&(g~=0)
            count=count+1;
            c=count;
            col=count;
            maxcount(mc)=count;
        else grl(g,c)=grl(g,c)+1;col=1;
            count=1;
            c=1;
        end
    end
    grl(f,col)=grl(f,col)+1;
    count=1;
    c=1;
end
I=(mx:mn);
m=grl(mn:mx,:);
m1=m';
maxrun=max(max(maxcount));
S=0;
G(gl)=0;
R(q)=0;
for u=1:gl
    for v=1:q
G(u)=G(u)+m(u,v);
        S=S+m(u,v);
    end
end
for u1=1:q
    for v1=1:gl
        R(u1)=R(u1)+m1(u1,v1);
    end
end
[dim,dim1]=size(G);
SRE=0; LRE=0; GLN=0; RLN=0; RP=0; LGRE=0; HGRE=0;
for h1= 1:maxrun
    SRE=SRE+(R(h1)/(h1*h1));
    LRE=LRE+(R(h1)*(h1*h1));
    RLN=RLN+(R(h1)*R(h1));
    RP=RP+R(h1);
end
SRE1=SRE/S;
LRE1=LRE/S;
RLN1=RLN/S;
RP1=RP/n;
for h2=1:gl
    GLN=(GLN+G(h2)^2);
    LGRE=LGRE+(G(h2)/(h2*h2));
    HGRE=HGRE+(h2*h2)*G(h2);
end
GLN1=GLN/S;
LGRE1=LGRE/S;
HGRE1=HGRE/S;
clc
% ---------------------------DISPLAY THE PARAMETERS------------------------
disp(sprintf('%6.4f',SRE1))
disp(sprintf('%6.4f',LRE1))
disp(sprintf('%6.4f',GLN1))
disp(sprintf('%6.4f',RP1))
disp(sprintf('%6.4f',RLN1))
disp(sprintf('%6.4f',LGRE1))
disp(sprintf('%6.4f',HGRE1))
 
 






