function tables = featExtract(struct)
%Pass the structs created by the parseCurrent/Voltage functions
%respectively. This function will then loop throught the elements in the
%struct and extract 14 time-domian features to be given to the algorithm
%either for training or testing.
%Initialize feature table
feat = zeros(3,14);

%Create a cell array to hold the cell names within the struct to be used in
%the for loop
fn = fieldnames(struct);

%Initialize cell array to hold extracted features fro each of the 15 data
%sets from the struct.
tables = cell(1,15);

for i = 1 : numel(fn)
   
    %Indxes into the given struct. Increments 
    data = struct.(fn{i});

    %Compute mean of sample
    feat(1:3) = mean(data,1);

    %Compute rms of sample
    feat(4:6) = rms(data,1);

    %Compute max amplitude of sample
    feat(7:9) = max(data);

    %Compute min amplitude of sample
    feat(10:12) = min(data);

    %Maximum to minimum difference
    feat(13:15) = peak2peak(data,1);

    %Compute standard deviation
    feat(16:18) = std(data,1);

    %Compute skewness
    feat(19:21) = skewness(data,1);

    %Compute Kurtosis
    feat(22:24) = kurtosis(data,1);

    %Compute Variance
    feat(25:27) = var(data,1);

    %Cummulative Maximum
    feat(28:30) = mean(cummax(data,1));

    %Cummulative Minimum
    feat(31:33) = mean(cummin(data,1));

    %Peak magnitude to RMS ratio
    feat(34:36) = peak2rms(data,1);

    %Root sum of squares level
    feat(37:39) = rssq(data,1);

    %Period of sequence
    feat(40:42) = seqperiod(data,1);
    
    %Place extracted features from ith second into cell array.
    tables{i} = feat;
   
end

tables = transpose(tables);

end

