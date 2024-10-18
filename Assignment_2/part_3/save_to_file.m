function r = save_to_file(file_name, data)
    fileID = fopen(file_name, 'W');
    fprintf(fileID, '%f%f%f\n', data);
    fclose(fildID);
    r = 1;
end %save