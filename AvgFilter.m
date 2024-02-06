function avg=AvgFilter(x) % 매개변수:x 

persistent preAvg k  % AvgFilter함수가 끝난 후에도 변수를 저장하기 위한 persistent
persistent firstRun  % 위와 동일 

if isempty(firstRun) % 함수 초기화  
    k=1;
    preAvg=0;
    firstRun=1;
end

alpha=(k-1)/k;
avg=alpha*preAvg+(1-alpha)*x;
preAvg=avg;
k=k+1;
