clear all;
clc;

%% Load rosbag data.
bag_data = rosbag("./rawData/2019-08-30-09-31-06.bag");
active_Topics = bag_data.AvailableTopics                     % Display Available Topics

%% Extract Point Cloud Data
pc_Data = select(bag_data, "Topic", '/points_raw');
pc_Mesgs = readMessages(pc_Data);
pc_XYZ = readXYZ(pc_Mesgs{1});
%pc_RGB = readRGB(pc_Mesgs{1});

%% Extract the transformation quarternion from tf data.
frames = bag_data.AvailableFrames                            % Display available frames
tf_lidar = getTransform(bag_data,'velodyne',frames{1});
[quat_lidar,trans_lidar, rotm_lidar] = getTF(tf_lidar);

tf_map = getTransform(bag_data,'map',frames{1});
[quat_map,trans_map, rotm_map] = getTF(tf_map);

tf_world = getTransform(bag_data,'world',frames{1});
[quat_world,trans_world, rotm_world] = getTF(tf_world);