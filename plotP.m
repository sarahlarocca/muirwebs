plot1 = figure (1);
plot(1:100000,pPowerFail(1,:,1), 1:100000,pPowerFail(1,:,2), 1:100000,pPowerFail(1,:,3));
xlabel('Iteration')
ylabel('P(Power failure)')
legend('Residence 1', 'Residence 2', 'Residence 3')
title('75 mph')
saveas(plot1,'plotPower75','tif');

plot2 = figure(2);
plot(1:100000,pWaterFail(1,:,1),1:100000,pWaterFail(1,:,2),1:100000,pWaterFail(1,:,3));
xlabel('Iteration')
ylabel('P(Water failure)')
legend('Residence 1', 'Residence 2', 'Residence 3')
title('75 mph')
saveas(plot2,'plotWater75','tif');

plot3 = figure(3);
plot(1:100000,pRoadFail(1,:,1),1:100000,pRoadFail(1,:,2),1:100000,pRoadFail(1,:,3));
xlabel('Iteration')
ylabel('P(Road failure)')
legend('Residence 1', 'Residence 2', 'Residence 3')
title('75 mph')
saveas(plot3,'plotRoad75','tif');

plot4 = figure(4);
plot(1:100000,pPowerFail(2,:,1),1:100000,pPowerFail(2,:,2),1:100000,pPowerFail(2,:,3));
xlabel('Iteration')
ylabel('P(Power failure)')
legend('Residence 1', 'Residence 2', 'Residence 3')
title('110 mph')
saveas(plot4,'plotPower110','tif');

plot5 = figure(5);
plot(1:100000,pWaterFail(2,:,1),1:100000,pWaterFail(2,:,2),1:100000,pWaterFail(2,:,3));
xlabel('Iteration')
ylabel('P(Water failure)')
legend('Residence 1', 'Residence 2', 'Residence 3')
title('110 mph')
saveas(plot5,'plotWater110','tif');

plot6 = figure(6);
plot(1:100000,pRoadFail(2,:,1),1:100000,pRoadFail(2,:,2),1:100000,pRoadFail(2,:,3));
xlabel('Iteration')
ylabel('P(Road failure)')
legend('Residence 1', 'Residence 2', 'Residence 3')
title('110 mph')
saveas(plot6,'plotRoad110','tif');