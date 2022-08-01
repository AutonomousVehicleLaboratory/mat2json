function [quat,trans_vec, rotm] = getTF(tf)
% Extract quaternion, rotation matrix, and translation vector
% Input: tf (TransformStamped) - transformation data

quat = [tf.Transform.Rotation.X, tf.Transform.Rotation.Y, tf.Transform.Rotation.Z, tf.Transform.Rotation.W];

trans_vec = [tf.Transform.Translation.X, tf.Transform.Translation.Y, tf.Transform.Translation.Z];

rotm = quat2rotm(quat);

end