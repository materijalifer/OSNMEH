%%
hFig = figure(1);
set(hFig, 'Position', [1200 200 1280 1024]);

%%
%%lab5
plot(angle_in(:,1), angle_in(:,2), 'r');
%%
hold all;
plot(epsi_g_sim(:,1), epsi_g_sim(:,2), 'c--');
plot(epsi_g(:,1), epsi_g(:,2), 'b');

%%
set(gca, 'Xlim', [0 5], 'Ylim', [-30 30]);
%set(gca, 'linewidth', 1);
set(get(gca, 'children'), 'linewidth', 1.5);

hLegend = legend( ...
    'Referentni signal', 'Simulirani signal','Mjereni signal',  ...
    'location', 'NorthEast');
%hTitle = title('Usporedba signala MultiQ-PCI kartice');


hXLabel = xlabel('Vrijeme (s)' , 'fontsize', 20);
hYLabel = ylabel('Pozicija ( \circ)', 'fontsize', 20);



%% Ultra fancy stuff

set( gca                       , ...
    'FontName'   , 'Helvetica' );
set([hXLabel, hYLabel], ...
    'FontName'   , 'AvantGarde');
set( gca             , ...
    'FontSize'   , 14           );

set( hLegend             , ...
    'FontSize'   , 18           );
%set([hXLabel, hYLabel]  , ...
%    'FontSize'   , 12          );
%set( hTitle                    , ...
%    'FontSize'   , 14          , ...
%    'FontWeight' , 'bold'      );

set(gca, ...
  'Box'         , 'off'     , ...
  'TickDir'     , 'out'     , ...
  'TickLength'  , [.02 .02] , ...
  'XMinorTick'  , 'on'      , ...
  'YMinorTick'  , 'on'      , ...
  'YGrid'       , 'on'      , ...
  'XColor'      , [.3 .3 .3], ...
  'YColor'      , [.3 .3 .3], ...
  'YTick'       , -30:10:30, ...
  'LineWidth'   , 1         );
