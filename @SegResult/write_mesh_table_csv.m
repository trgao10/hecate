function write_mesh_detail_csv(SegResult, filePath)
% WRITE_MESH_DETAIL_CSV - Writes CSV with segment detail data per mesh

	disp('Writing CSV table of mesh details...');
	d = SegResult.data;
	varNames = {'mesh_name', 'mesh_area', 'segment_number', ...
		'total_segment_area', 'border_area'};
	dataTable = table(d.meshName, d.meshArea, d.segmentN, ...
		d.segmentAreaTotal, d.meshBorderArea, 'VariableNames', varNames);
	writetable(dataTable, filePath);

end