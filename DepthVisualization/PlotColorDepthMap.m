%% plot depth image

% example image
% depthCur = getImgInTUMRGBDdataset(datasetPath, ICSLRGBDdataset, cam, imgIdx, 'depth');

depthCur =  imread('depth_2.png');

figure;
imshow(depthCur, []); colormap jet;
set(gca,'units','pixels'); x = get(gca,'position');
set(gcf,'units','pixels'); y = get(gcf,'position');
set(gcf,'position',[y(1) y(2) x(3) x(4)]);
set(gca,'units','normalized','position',[0 0 1 1]);
