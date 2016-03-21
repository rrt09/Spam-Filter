require 'classifier'
require 'madeleine'


task :my_task2  do
		m = SnapshotMadeleine.new("bayesdata") {Classifier::Bayes.new 'Spam', 'Ham'}
	  Dir.glob("public/email-filter/spam/*").each do |d|
	    m.system.train_spam File.read(d)
	    p d
	  end
		Dir.glob("public/email-filter/ham/*").each do |d|
	    m.system.train_ham File.read(d)
	    p d
	  end
    m.take_snapshot


end
