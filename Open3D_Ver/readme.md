# open3D version

정리 나중에

현재 코드 여러 RGB depth map을 point cloud로 만드는 것 가능하나 각 위치를 고려안한 상태. 
위치 고려해서 반영해야함.
일단 depth map 하나의 대해서만 가능한 상태.
파일 경로도 막 지정한 상태라 수정 필요.

:heavy_check_mark:[open3d](http://www.open3d.org/)

:heavy_check_mark: [참고](http://www.open3d.org/docs/latest/tutorial/Basic/rgbd_image.html)

:heavy_check_mark: [point cloud 합치기](http://www.open3d.org/docs/latest/tutorial/Advanced/multiway_registration.html)

:heavy_check_mark: [point cloud를 파일로?..](http://www.open3d.org/docs/release/python_api/open3d.io.write_point_cloud.html) 

:heavy_check_mark: [point cloud downsampling etc.](http://www.open3d.org/docs/release/tutorial/geometry/pointcloud.html)

:heavy_check_mark: [point colud](http://www.open3d.org/docs/0.7.0/python_api/open3d.geometry.create_point_cloud_from_depth_image.html)


### custom 데이터로 
:heavy_check_mark: [stack overflow custom data pointcloud](https://stackoverflow.com/questions/68331356/how-i-convert-depth-image-3d-using-open3d-lib-in-python)

`pcd = o3d.geometry.PointCloud.create_from_depth_image(depth_image,                                                        
                                                      intrinisc_cam_parameters, 
                                                      extrinsic_cam_parameters
                                                     )`
:heavy_check_mark: [stack overflow update cam in,extrinsic in open3d](https://stackoverflow.com/questions/62809091/update-camera-intrinsic-parameter-in-open3d-python)

`
intrinsic = o3d.camera.PinholeCameraIntrinsic(w, h, fx,fy, cx, cy)

intrinsic.intrinsic_matrix = [[fx, 0, cx], [0, fy, cy], [0, 0, 1]]

cam = o3d.camera.PinholeCameraParameters()

cam.intrinsic = intrinsic

cam.extrinsic = np.array([[0., 0., 0., 0.], [0., 0., 0., 0.], [0., 0., 0., 0.], [0., 0., 0., 1.]])

pcd = o3d.geometry.create_point_cloud_from_rgbd_image(
    rgbd_image, cam.intrinsic, cam.extrinsic)
`

## open3d install
[설치 참고](http://www.open3d.org/docs/release/getting_started.html)     
`pip install open3d`

