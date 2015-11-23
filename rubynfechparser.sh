# Uninstall previous gems :

gem update --system

gem --version

# 2.1.8

gem uninstall --all

# Remove previous ruby installation :

rm -f /usr/bin/ruby

rm -f /usr/local/bin/ruby

yum remove ruby -y

yum remove rubygems

#update yum

yum update -y

# Install Ruby 2 :

cd /opt/

#download

wget --no-check-certificate https://ftp.ruby-lang.org/pub/ruby/ruby-2.2.3.tar.gz

#extract

tar xvzf ruby-2.2.3.tar.gz

#remove backup

rm -f ruby-2.2.3.tar.gz

cd ruby-2.2.3

#build

./configure

make

make install

#create symlinks

ln -s /opt/ruby-2.2.3/ruby /usr/bin/ruby

ln -s /opt/ruby-2.2.3/ruby /usr/local/bin/ruby

#check ruby version

ruby --version

#should produce something like:



#ruby 2.2.3p173 (2015-08-18 revision 51636) [i686-linux]


#Install updated rubygems:

cd /opt/

#download rubygems 1.8

wget http://production.cf.rubygems.org/rubygems/rubygems-1.8.24.tgz

#extract

tar xvzf rubygems-1.8.24.tgz

#remove backup

rm -f rubygems-1.8.24.tgz

cd rubygems-1.8.24

ruby setup.rb

#check gem version

gem --version

#should produce something like



#1.8.24


 
#check Ruby REPL version

irb --version

#should produce something like



#irb 0.9.5(05/04/13)



#install a sample crawler package

gem install fech


#see installed crawler package version

gem list fech

#should produce something like this:



#



#*** LOCAL GEMS ***



#



#fech(1.8)



#

# Run the ruby REPL:


irb

#Checkout Helloworld!

puts 'Helloworld'

#run the follwing lines in REPL and check out crawled data 

# by installed FEC crawler package at:

#/tmp/723604.fec

filing = Fech::Filing.new(723604)

filing.download


# See properties and methods of a ruby object:

filing.inspect

#will print all properties of this object

: <<'END'

<Fech::Filing:0x29ba8b4 @filing_id=1029398, @download_dir=\"/tmp\", @translator=nil, @quote_char=\"\\\"\", @csv_parser=Fech::Csv, @resaved=false, @customized=false, @encoding=\"iso-8859-1:utf-8\">"

END

filing.methods.sort

#will print properties + all methods as well

: <<'END'

[:!, :!=, :!~, :<=>, :==, :===, :=~, :__id__, :__send__, :amendment?, :amends, :class, :clone, :custom_file_path, :define_singleton_method, :delimiter, :display, :download, :download_dir, :download_dir=, :dup, :each_row, :each_row_with_index, :enum_for, :eql?, :equal?, :extend, :file_contents, :file_name, :file_path, :filing_id, :filing_id=, :filing_url, :filing_version, :fix_f99_contents, :form_type, :freeze, :frozen?, :hash, :hash_zip, :header, :inspect, :instance_eval, :instance_exec, :instance_of?, :instance_variable_defined?, :instance_variable_get, :instance_variable_set, :instance_variables, :is_a?, :itself, :kind_of?, :map, :map_for, :mappings, :method, :methods, :nil?, :object_id, :parse_filing_version, :parse_row?, :private_methods, :protected_methods, :public_method, :public_methods, :public_send, :readable?, :remove_instance_variable, :resave_f99_contents, :respond_to?, :rows_like, :send, :singleton_class, :singleton_method, :singleton_methods, :summary, :taint, :tainted?, :tap, :to_enum, :to_s, :translate, :translator, :trust, :untaint, :untrust, :untrusted?]

END
