require 'tty-prompt'
require 'open3'
require_relative '../exceptions/exceptions'
require_relative '../methods/methods'

class Folder

    attr_reader :folder_name, :all_files
    def initialize(folder_name)
        @folder_name = folder_name
        @all_files = []
    end

    def createFolder
        print "Name your project folder: "
        @folder_name = gets.chomp.tr(" ", "_")
        while @folder_name.empty?
            errorMsg
            print "Name cannot be an empty string, choose another name: "
            @folder_name = gets.chomp.tr(" ", "_")
        end
        doesFolderExist?
        `mkdir #{folder_name}`
        Dir.chdir("#{folder_name}")
        `touch index.html`
        @all_files << 'index'
    end

    def doesFolderExist?
        existing_dir, stderr, status = Open3.capture3("ls")
        existing_dir.split("\n").each do |dir|
            if dir == @folder_name
                print "You already have a folder called #{@folder_name}, please choose another name: "
                @folder_name = gets.chomp
            end
        end
    end

    def addCSS?
        prompt = TTY::Prompt.new(symbols: {marker: '►'})
        user_input = prompt.select("Add CSS?") do |menu|
            menu.choice 'Yes', 1
            menu.choice 'No', 2
        end
        case user_input
        when 1
            `touch styles.css`
            @all_files << 'styles'
            return
        when 2
            return
        end
    end
    def addJavaScript?
        prompt = TTY::Prompt.new(symbols: {marker: '►'})
        user_input = prompt.select("Add JavaScript?") do |menu|
            menu.choice 'Yes', 1
            menu.choice 'No', 2
        end
        case user_input
        when 1
            `touch script.js`
            @all_files << 'script'
            return
        when 2
            return
        end
    end

    def writeFile
        File.foreach("../template.txt") do |line| 
            File.open("index.html", "a") do |f|
                folder_title = folder_name.split('_').map(&:capitalize)*' '
                if line.include?('<title>')
                    if @all_files.include?('styles') && @all_files.include?('script')
                        f.write "\t<title>#{folder_title}</title>\n"
                        f.write "\t<link rel='stylesheet' href='style.css'>\n"
                        f.write "\t<script src='script.js'></script>\n"
                        puts "A new folder called '#{folder_name}' was created with styles.css and script.js files!"
                    elsif @all_files.include?('styles') && !@all_files.include?('script')
                        f.write "\t<title>#{folder_title}</title>\n"
                        f.write "\t<link rel='stylesheet' href='style.css'>"
                        puts "A new folder called '#{folder_name}' was created with styles.css file!"
                    elsif @all_files.include?('script') && !@all_files.include?('styles')
                        f.write "\t<title>#{folder_title}</title>\n"
                        f.write "\t<script src='script.js'></script>"
                        puts "A new folder called '#{folder_name}' was created with script.js file!"
                    else
                        f.write "\t<title>#{folder_title}</title>"
                        puts "A new folder called '#{folder_name}' was created!"
                    end
                else
                    f.write line
                end
            end
        end
    end
end