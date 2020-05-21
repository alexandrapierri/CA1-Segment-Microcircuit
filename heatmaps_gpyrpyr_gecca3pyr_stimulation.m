x = norm_theta_3_12Hz_range(:,8);
y = norm_theta_3_12Hz_range(:,9);
sz = 100;
c = norm_theta_3_12Hz_range(:,1); %norm theta
g = norm_theta_3_12Hz_range(:,3); %theta freq
h = norm_theta_3_12Hz_range(:,6); %stimulation
j = norm_theta_3_12Hz_range(:,10); %3vs4
i = norm_theta_3_12Hz_range(:,2); %Net Theta Power

figure
scatter(x,y,sz,j,'filled');
hold off;


figure(1);clf;
 
%% In the following line I made replaced "max_freq" with "av" for average peak value April 22 2016
%%surf(gsb,gbs,max_freq);view(0,90);shading interp;

%scatter(x,y,sz,c,'filled');
surf(x_gpyrpyr,y_gecca3pyr,z_normtheta_April62020);view(0,90);shading interp;

%dim = [.58 .7 .2 .3];
%annotation('ellipse',dim)

xlabel('gpyr-pyr (nS)','fontsize',16);
ylabel('gec/ca3-pyr (nS)','fontsize',16);
zlabel('Normalized Theta Power','fontsize',16);

xlim([10,70]);
ylim([0.14,0.26]);
zlim([0,30]);

% set(gca,'CLim',[0,0.0000000000000000000000000000000000000000005]);
t = colorbar;
% set(get(t,'ylabel'),'String', 'Normalized Theta Power','fontsize',16);

title_string = sprintf('Normalized Theta Power');
title(title_string,'fontsize',16);

set(gca,'FontSize',16)
set(gcf,'PaperUnits','inches');
set(gcf,'PaperSize',[6 4.5]);
set(gcf,'PaperPositionMode','manual');
set(gcf,'renderer','painters');

name_file=['Normalized_Theta_Power']; 
print(gcf,'-r300','-djpeg',name_file);
print(gcf,'-depsc',name_file);
% saveas(gcf,name_file,'fig'); hold on
% saveas(gcf,name_file,'png');
extensions = {'fig','tiff'};
for k = 1:length(extensions)
    saveas(gcf,name_file, extensions{k})
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(2);clf;

%% In the following line I made replaced "max_freq" with "av" for average peak value April 22 2016
%%surf(gsb,gbs,max_freq);view(0,90);shading interp;

%scatter(x,y,sz,g,'filled');
surf(x_gpyrpyr,y_gecca3pyr,z_thetafreq_April62020);view(0,90);shading interp;


xlabel('gpyr-pyr (nS)','fontsize',16);
ylabel('gec/ca3-pyr (nS)','fontsize',16);
zlabel('Theta Frequency','fontsize',16);

% xlim([0,gsb(end,1)+0.25]);
% ylim([0,gbs(1,end)+0.25]);
xlim([10,70]);
ylim([0.14,0.26]);
zlim([0,9]);

% set(gca,'CLim',[0,0.0000000000000000000000000000000000000000005]);
t = colorbar;
% set(get(t,'ylabel'),'String', 'Theta Frequency','fontsize',16);

title_string = sprintf('Theta Frequency');
title(title_string,'fontsize',16);

set(gca,'FontSize',16)
set(gcf,'PaperUnits','inches');
set(gcf,'PaperSize',[6 4.5]);
set(gcf,'PaperPositionMode','manual');
set(gcf,'renderer','painters');

name_file=['Theta_Frequency']; 
print(gcf,'-r300','-djpeg',name_file);
print(gcf,'-depsc',name_file);
% saveas(gcf,name_file,'fig'); hold on
% saveas(gcf,name_file,'png');
extensions = {'fig','tiff'};
for k = 1:length(extensions)
    saveas(gcf,name_file, extensions{k})
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(3);clf;

%% In the following line I made replaced "max_freq" with "av" for average peak value April 22 2016
%%surf(gsb,gbs,max_freq);view(0,90);shading interp;

%scatter(x,y,sz,h,'filled');
surf(x_gpyrpyr,y_gecca3pyr,z_stimulation_April62020);view(0,90);shading interp;
xlabel('gpyr-pyr (nS)','fontsize',16);
ylabel('gec/ca3-pyr (nS)','fontsize',16);
zlabel('Stimulation','fontsize',16);

% xlim([0,gsb(end,1)+0.25]);
% ylim([0,gbs(1,end)+0.25]);
xlim([10,70]);
ylim([0.14,0.26]);
zlim([0,0.65]);


% set(gca,'CLim',[0,0.0000000000000000000000000000000000000000005]);
t = colorbar;
% set(get(t,'ylabel'),'String', 'Stimulation','fontsize',16);

title_string = sprintf('Stimulation');
title(title_string,'fontsize',16);

set(gca,'FontSize',16)
set(gcf,'PaperUnits','inches');
set(gcf,'PaperSize',[6 4.5]);
set(gcf,'PaperPositionMode','manual');
set(gcf,'renderer','painters');

name_file=['Stimulation']; 
print(gcf,'-r300','-djpeg',name_file);
print(gcf,'-depsc',name_file);
% saveas(gcf,name_file,'fig'); hold on
% saveas(gcf,name_file,'png');
extensions = {'fig','tiff'};
for k = 1:length(extensions)
    saveas(gcf,name_file, extensions{k})
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(4);clf;

%% In the following line I made replaced "max_freq" with "av" for average peak value April 22 2016
%%surf(gsb,gbs,max_freq);view(0,90);shading interp;

scatter(x,y,sz,j,'filled');
%surf(x_gpyrpyr,y_gecca3pyr,z_stimulation_April62020);view(0,90);shading interp;
xlabel('gpyr-pyr (nS)','fontsize',16);
ylabel('gec/ca3-pyr (nS)','fontsize',16);
zlabel('Stimulation','fontsize',16);

% xlim([0,gsb(end,1)+0.25]);
% ylim([0,gbs(1,end)+0.25]);
xlim([10,70]);
ylim([0.14,0.26]);
zlim([0,0.65]);


% set(gca,'CLim',[0,0.0000000000000000000000000000000000000000005]);
t = colorbar;
% set(get(t,'ylabel'),'String', 'Stimulation','fontsize',16);

title_string = sprintf('Stimulation');
title(title_string,'fontsize',16);

set(gca,'FontSize',16)
set(gcf,'PaperUnits','inches');
set(gcf,'PaperSize',[6 4.5]);
set(gcf,'PaperPositionMode','manual');
set(gcf,'renderer','painters');

name_file=['3vs4']; 
print(gcf,'-r300','-djpeg',name_file);
print(gcf,'-depsc',name_file);
% saveas(gcf,name_file,'fig'); hold on
% saveas(gcf,name_file,'png');
extensions = {'fig','tiff'};
for k = 1:length(extensions)
    saveas(gcf,name_file, extensions{k})
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(5);clf;

%% In the following line I made replaced "max_freq" with "av" for average peak value April 22 2016
%%surf(gsb,gbs,max_freq);view(0,90);shading interp;

% scatter(x,y,sz,i,'filled');
surf(x_gpyrpyr,y_gecca3pyr,z_nettheta_April272020);view(0,90);shading interp;
xlabel('gpyr-pyr (nS)','fontsize',16);
ylabel('gec/ca3-pyr (nS)','fontsize',16);
zlabel('Net Theta power','fontsize',16);

% xlim([0,gsb(end,1)+0.25]);
% ylim([0,gbs(1,end)+0.25]);
xlim([10,70]);
ylim([0.14,0.26]);
zlim([0,0.65]);


% set(gca,'CLim',[0,0.0000000000000000000000000000000000000000005]);
t = colorbar;
% set(get(t,'ylabel'),'String', 'Stimulation','fontsize',16);

title_string = sprintf('Net Theta Power');
title(title_string,'fontsize',16);

set(gca,'FontSize',16)
set(gcf,'PaperUnits','inches');
set(gcf,'PaperSize',[6 4.5]);
set(gcf,'PaperPositionMode','manual');
set(gcf,'renderer','painters');

name_file=['3vs4']; 
print(gcf,'-r300','-djpeg',name_file);
print(gcf,'-depsc',name_file);
% saveas(gcf,name_file,'fig'); hold on
% saveas(gcf,name_file,'png');
extensions = {'fig','tiff'};
for k = 1:length(extensions)
    saveas(gcf,name_file, extensions{k})
end
