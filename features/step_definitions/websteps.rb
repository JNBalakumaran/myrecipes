module WithinHelpers
 def with_scope(locator)
   locator ? within(*selector_for(locator) , :match => :prefer_exact) { yield } : yield
 end
 # Rails 3.2.13 bug (json 1.7.7). Temporary, until JSON will be fixed.
 def clear_utf_symbols(string)
   string.gsub(/[»«]/, '')
 end
end
World(WithinHelpers)


When("I visit home page") do
 visit root_path
end