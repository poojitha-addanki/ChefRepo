Chef::Recipe.send(:include, Node)
template '/tmp/test/sample' do
  source 'sample.erb'
  owner 'root'
  group 'root'
  mode '0755'
  force_unlink  true
 end

n = Test.new(30)
Chef::Log.info( "This is somthinf I a m doin#{n.show}")