function trialfun_10mndPilot()
% trialfun for 10 month pilot bdf data

event = ft_read_event(cfg.dataset);
hdr = ft_read_header(cfg.dataset);

evValue = {event.value};
emptIndx = find(cellfun(@isempty, evValue) == 1);
evValue(emptIndx) = num2cell(zeros(1,length(emptIndx)));
evValue = [evValue{:}];

clear event