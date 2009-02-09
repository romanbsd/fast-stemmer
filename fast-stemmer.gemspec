# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{fast-stemmer}
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Roman Shterenzon"]
  s.date = %q{2009-02-09}
  s.description = %q{Fast Porter stemmer based on a C version of algorithm}
  s.email = %q{romanbsd@yahoo.com}
  s.extensions = ["ext/extconf.rb"]
  s.files = ["Rakefile", "README", "LICENSE", "VERSION.yml", "ext/extconf.rb", "ext/porter.c", "ext/porter_wrap.c", "lib/fast_stemmer.rb", "test/fast_stemmer_test.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/romanbsd/fast-stemmer}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Fast Porter stemmer based on a C version of algorithm}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
