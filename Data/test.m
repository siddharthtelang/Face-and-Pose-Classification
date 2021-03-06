images = load('data.mat');
faces = images.face;
X = reshape(faces, 504, []);
N = 600;
X_neutral = X(:,1:3:N);
X_expression = X(:,2:3:N);
X_illumination = X(:,3:3:N);
data = [];
for n = 1:200
    imageN = faces(:,:,3*n-1);
    imageE = faces(:,:,3*n);
    data = [data imageN(:) imageE(:)];
end
cof = pca(data,"NumComponents",100);
