# Install steps:

** Install RVM & Ruby:

`curl -L get.rvm.io | bash -s stable`
`source ~/.rvm/scripts/rvm`
`rvm install 2.0.0`

** Install required gems
1. `sudo gem update --system`
2. `sudo gem install rspec --no-ri --no-rdoc`
3. `sudo gem install watir-webdriver --no-ri --no-rdoc`

** Download Firefox geckodriver WebDriver
1. Go to https://github.com/mozilla/geckodriver/releases and choose the zip file for your OS
2. Zip it to your local directory and add it in your system PATH variable.  I put it under /usr/local/bin/ and it's in my PATH system variable

** Download and run test script
1. `git clone url-to-github-repo`
2. `cd repo-dir`
3. `ruby search_by_keyword_test.rb`
