%[R_n,P_n] = corrcoef(norm_theta_3_12Hz_range(:,3),norm_theta_3_12Hz_range(:,11));


[rho,pval] = corr(norm_theta_3_12Hz_range(:,2),norm_theta_3_12Hz_range(:,9));

% LINEAR REGRESSION, CODE BY ALEXANDRA CHATZIKALYMNIOU APRIL 2020.

xm_n = norm_theta_3_12Hz_range(:,11);
fm_n = norm_theta_3_12Hz_range(:,3);
km_n = norm_theta_3_12Hz_range(:,12);


N_n = max(size(xm_n));

%FIT to f(x) = b + m*x
X_n = [ones(N_n,1) xm_n(:)]
a_n = (X_n.'*X_n)\(X_n.'*fm_n(:)) 

b_n = a_n(1);
m_n = a_n(2);

%CALCULATE LINE FOR REGRESSION
xa_n = min(xm_n);
xb_n = max(xm_n);
x_n = linspace(xa_n,xb_n,100);
q_n = b_n + m_n*x_n;



figure(1);clf;

% err = km; %0.3*ones(size(km));
% errorbar(xm,fm,km,'.b','horizontal','MarkerSize',20);

plot(xm_n,fm_n,'.b','MarkerSize',14);
hold on;
plot(x_n, q_n,'-r');
hold off;
axis equal tight;
xlabel('Net Current (nA)','fontsize',16);
ylabel('Theta Frequency (Hz)','fontsize',16);

xlim([-12,-2]);
ylim([2,9]);

title_string = sprintf('Theta Frequency vs Net Current');
title(title_string,'fontsize',16);

set(gca,'FontSize',16)
set(gcf,'PaperUnits','inches');
set(gcf,'PaperSize',[6 4.5]);
set(gcf,'PaperPositionMode','manual');
set(gcf,'renderer','painters');
annotation('textbox', [0.6, 0.73, 0.1, 0.1], 'String', "ρ="+R(1,2))
annotation('textbox', [0.6, 0.66, 0.1, 0.1], 'String',"pvalue="+P(1,2))

name_file=['currents_linear_regression']; 
print(gcf,'-r300','-djpeg',name_file);
print(gcf,'-depsc',name_file);
% saveas(gcf,name_file,'fig'); hold on
% saveas(gcf,name_file,'png');
extensions = {'fig','tiff'};
for k = 1:length(extensions)
    saveas(gcf,name_file, extensions{k})
end
