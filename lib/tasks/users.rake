
def ask?(prompt)
  input = nil
  while !input.present?
    STDOUT.puts prompt
    input = STDIN.gets.strip
  end
  STDOUT.puts "\n"
  input
end

task :create_user => [:environment] do
  STDOUT.puts "Create A New User"
  STDOUT.puts "================="
  user = nil
  while !user.present? || !user.valid? do
    puts user.errors.messages.collect{|k,v| "#{k}: #{v.join(", ")}"}.join("\n") if user.present?
    email = ask?("Email (admin@domain.com):")
    user = Users::Create.call(email: email)
  end
end