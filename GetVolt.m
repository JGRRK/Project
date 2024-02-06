%% 전압값 읽어오는 함수 

function z = GetVolt()


w = 0 + 4*randn(1,1); % disturbance
z = 14.4 + w;
