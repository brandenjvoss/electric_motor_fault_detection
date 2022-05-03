function featTable = voltageTable(vFeat)

featTable = cell2mat(vFeat);

featTable = array2table(featTable);

% IDtag = ones(45,1);
% 
% IDtag(1:45) = tag;
% 
% IDtag = array2table(IDtag);
% 
% featTable = [featTable,IDtag];

featTable.Properties.VariableNames{1} = 'voltage mean';

featTable.Properties.VariableNames{2} = 'voltage rms';

featTable.Properties.VariableNames{3} = 'voltage max';

featTable.Properties.VariableNames{4} = 'voltage min';

featTable.Properties.VariableNames{5} = 'voltage peak to peak';

featTable.Properties.VariableNames{6} = 'voltage std';

featTable.Properties.VariableNames{7} = 'voltage skewness';

featTable.Properties.VariableNames{8} = 'voltage kurtosis';

featTable.Properties.VariableNames{9} = 'voltage variance';

featTable.Properties.VariableNames{10} = 'voltage cummulative max';

featTable.Properties.VariableNames{11} = 'voltage cummulative min';

featTable.Properties.VariableNames{12} = 'voltage peak to rms';

featTable.Properties.VariableNames{13} = 'voltage root sum of squares';

featTable.Properties.VariableNames{14} = 'voltage period';

% featTable.Properties.VariableNames{15} = 'ID tag';

end