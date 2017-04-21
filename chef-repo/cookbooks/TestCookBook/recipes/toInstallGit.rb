
execute 'install_git' do
  command "C:/chef/Git-2.12.2.2-64-bit.exe /SILENT"
end
not_if { git ---version}