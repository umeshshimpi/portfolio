# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

# Create Profile
Profile.find_or_create_by!(name: "Your Name") do |profile|
  profile.title = "Full Stack Developer"
  profile.summary = "Passionate full-stack developer with 5+ years of experience building scalable web applications. Proficient in Ruby on Rails, React, and modern JavaScript frameworks. Strong advocate for clean code, agile methodologies, and continuous learning."
  profile.photo = "https://via.placeholder.com/150"
  profile.email = "your.email@example.com"
  profile.phone = "(555) 123-4567"
  profile.location = "San Francisco, CA"
  profile.linkedin_url = "https://linkedin.com/in/yourprofile"
  profile.github_url = "https://github.com/yourusername"
end

# Create Skills
skills_data = [
  { name: "Ruby on Rails", category: "Backend", proficiency: 5 },
  { name: "JavaScript", category: "Frontend", proficiency: 5 },
  { name: "React", category: "Frontend", proficiency: 4 },
  { name: "PostgreSQL", category: "Database", proficiency: 4 },
  { name: "HTML/CSS", category: "Frontend", proficiency: 5 },
  { name: "Tailwind CSS", category: "Frontend", proficiency: 4 },
  { name: "Git", category: "Tools", proficiency: 5 },
  { name: "Docker", category: "DevOps", proficiency: 3 },
  { name: "AWS", category: "Cloud", proficiency: 3 },
  { name: "Agile/Scrum", category: "Methodology", proficiency: 4 },
  { name: "Test-Driven Development", category: "Methodology", proficiency: 4 },
  { name: "Team Leadership", category: "Soft Skills", proficiency: 4 }
]

skills_data.each do |skill_data|
  Skill.find_or_create_by!(name: skill_data[:name]) do |skill|
    skill.category = skill_data[:category]
    skill.proficiency = skill_data[:proficiency]
  end
end

# Create Education
Education.find_or_create_by!(institution: "University of Technology", degree: "Bachelor of Science") do |edu|
  edu.field_of_study = "Computer Science"
  edu.start_date = Date.new(2015, 9, 1)
  edu.end_date = Date.new(2019, 5, 30)
  edu.gpa = "3.8"
  edu.description = "Graduated Magna Cum Laude. Relevant coursework: Data Structures, Algorithms, Software Engineering, Database Systems."
end

Education.find_or_create_by!(institution: "Online Learning Platform", degree: "Certification") do |edu|
  edu.field_of_study = "AWS Certified Solutions Architect"
  edu.start_date = Date.new(2022, 6, 1)
  edu.end_date = Date.new(2022, 8, 31)
  edu.description = "Comprehensive training in cloud architecture, AWS services, and best practices for scalable applications."
end

# Create Work Experience
WorkExperience.find_or_create_by!(company: "Tech Startup Inc.", position: "Senior Full Stack Developer") do |exp|
  exp.start_date = Date.new(2021, 3, 1)
  exp.end_date = nil # Current position
  exp.location = "San Francisco, CA"
  exp.description = "Lead development of a SaaS platform serving 10,000+ users. Built and maintained RESTful APIs using Ruby on Rails, implemented real-time features with WebSockets, and optimized database queries resulting in 40% performance improvement. Mentored junior developers and established code review processes."
end

WorkExperience.find_or_create_by!(company: "Digital Agency", position: "Full Stack Developer") do |exp|
  exp.start_date = Date.new(2019, 6, 1)
  exp.end_date = Date.new(2021, 2, 28)
  exp.location = "Remote"
  exp.description = "Developed custom web applications for clients across various industries. Worked with modern JavaScript frameworks (React, Vue.js), implemented responsive designs with CSS frameworks, and integrated third-party APIs. Collaborated with design teams to deliver pixel-perfect implementations."
end

WorkExperience.find_or_create_by!(company: "Freelance", position: "Web Developer") do |exp|
  exp.start_date = Date.new(2018, 1, 1)
  exp.end_date = Date.new(2019, 5, 31)
  exp.location = "Various Locations"
  exp.description = "Built responsive websites and web applications for small businesses and startups. Technologies used: HTML5, CSS3, JavaScript, PHP, WordPress, and various CMS platforms. Managed client relationships and delivered projects on time and within budget."
end
