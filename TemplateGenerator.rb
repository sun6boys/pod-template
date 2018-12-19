#!/usr/bin/ruby -w


def  getProjectName

    print "Enter project name:"
    String projectName = gets
    projectName = projectName.delete(" ")
    if projectName == "\n" or projectName.empty?
	    return getProjectName
    end
    return projectName

end

def getHttpsRepo

    print "Enter Https Repo:"
    String httpsRepo = gets
    httpsRepo = httpsRepo.delete(" ")
    if httpsRepo == "\n" or httpsRepo.length == 0
	    return getHttpsRepo
    end
    return httpsRepo

end

def getSSHRepo

	print "Enter SSL repo:"
	String sslRepo = gets
	sslRepo = sslRepo.delete(" ")
	if sslRepo == "\n" or sslRepo.length == 0
		return getSSHRepo
	end
	return sslRepo

end

def getRepoHomePage
	
	print "Enter Repo HomePage:"
	String repoHomePage = gets
	repoHomePage = repoHomePage.delete(" ")
	if repoHomePage == "\n" or repoHomePage.length == 0
		return getRepoHomePage
	end
	return repoHomePage
end



def start

# ARGV.each {|arg| p arg }
# puts ARGV[2]
  
    projectName = getProjectName.delete("\n")
    sshRepo = getSSHRepo.delete("\n")
    httpsRepo = getHttpsRepo.delete("\n")
    repoHomePage = getRepoHomePage.delete("\n")

    puts "======================================================"
    puts "   Project Name   :   #{projectName}"
    puts "   SSH Repo       :   #{sshRepo}"
    puts "   Https Repo     :   #{httpsRepo}"
    puts "   Home Page Url  :   #{repoHomePage}"
    puts "======================================================"
    print "confirm? (y/n)"

    String confirm = gets
    confirm = confirm.delete(" ")
    confirm = confirm.delete("\n")
    if confirm.eql?("Y") or confirm.eql?("y")
       configProject projectName, sshRepo, httpsRepo, repoHomePage
    else 
       start
    end

end


def configProject(projectName, sshRepo, httpsRep, repoHomePage)
	
	String executeCommandPath = Dir.pwd
    String projectPath = executeCommandPath + "/" + projectName

    if File.exist?(projectPath) == false
    	puts "项目目录不存在"
    end

end

start


BEGIN {

  puts "init Ruby"
}

END{
	puts "Finished"
}


