
node.default['unInstallPath']='C:/tmp'"C:/Program Files/Git/"

execute 'unInstall_git' do
  cwd "#{node['unInstallPath']}"
  command "unins000.exe /SILENT"
  only_if { git ---version}
end

