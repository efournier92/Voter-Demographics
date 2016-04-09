SEP = "****************************************"
LNE = "---------------------------------------"
VOTERSAMPLE = [
  {
    first_name: 'Jon',
    last_name: 'Smith',
    age: 25,
    income: 50000,
    household_size: 1,
    gender: 'Male',
    education: 'College'
  },
  {
    first_name: 'Jane',
    last_name: 'Davies',
    age: 30,
    income: 60000,
    household_size: 3,
    gender: 'Female',
    education: 'High School'
  },
  {
    first_name: 'Sam',
    last_name: 'Farelly',
    age: 32,
    income: 80000,
    household_size: 2,
    gender: 'Unspecified',
    education: 'College'
  },
  {
    first_name: 'Joan',
    last_name: 'Favreau',
    age: 35,
    income: 65000,
    household_size: 4,
    gender: 'Female',
    education: 'College'
  },
  {
    first_name: 'Sam',
    last_name: 'McNulty',
    age: 38,
    income: 63000,
    household_size: 3,
    gender: 'Male',
    education: 'College'
  },
  {
    first_name: 'Mark',
    last_name: 'Minahan',
    age: 48,
    income: 78000,
    household_size: 5,
    gender: 'Male',
    education: 'High School'
  },
  {
    first_name: 'Susan',
    last_name: 'Umani',
    age: 45,
    income: 75000,
    household_size: 2,
    gender: 'Female',
    education: 'College'
  },
  {
    first_name: 'Bill',
    last_name: 'Perault',
    age: 24,
    income: 45000,
    household_size: 1,
    gender: 'Male',
    education: 'Did Not Complete High School'
  },
  {
    first_name: 'Doug',
    last_name: 'Stamper',
    age: 45,
    income: 75000,
    household_size: 1,
    gender: 'Male',
    education: 'College'
  },
  {
    first_name: 'Francis',
    last_name: 'Underwood',
    age: 52,
    income: 100000,
    household_size: 2,
    gender: 'Male',
    education: 'College'
  }]

voter_counter = 0
total_age = 0.0
total_income = 0.0
total_household = 0.0

male_counter = 0
female_counter = 0
unspecified_counter = 0

college_counter = 0
hs_counter = 0
dnc_hs_counter = 0

VOTERSAMPLE.each do |voter_hash|
  total_age += voter_hash[:age]
  total_income += voter_hash[:income]
  total_household += voter_hash[:household_size]

  if voter_hash[:gender] == 'Male'
    male_counter += 1
  elsif voter_hash[:gender] == 'Female'
    female_counter += 1
  else
    unspecified_counter += 1
  end

  if voter_hash[:education] == 'College'
    college_counter += 1
  elsif voter_hash[:education] == 'High School'
    hs_counter += 1
  else
    dnc_hs_counter += 1
  end
  voter_counter += 1
end

average_age = total_age / voter_counter
average_income = total_income / voter_counter
average_household = total_household / voter_counter

puts "#{SEP}\n          VOTER DEMOGRAPHICS\n#{SEP}"
puts "AGE AVERAGE:                 #{average_age}"
puts "INCOME AVERAGE:              $#{"%.02f" % average_income}"
puts "HOUSEHOLE SIZE AVERAGE:      #{average_household}"

female_percentage = (female_counter / voter_counter.to_f) * 100
male_percentage = (male_counter / voter_counter.to_f) * 100
unspecified_percentage = (unspecified_counter / voter_counter.to_f) * 100

puts LNE
puts "FEMALE PERCENTAGE:           #{female_percentage.to_i} %"
puts "MALE PERCENTAGE:             #{male_percentage.to_i} %"
puts "UNSPECIFIED GENDER:          #{unspecified_percentage.to_i} %"
puts LNE

college_percentage = (college_counter / voter_counter.to_f) * 100
hs_percentage = (hs_counter / voter_counter.to_f) * 100
dnc_hs_percentage = (dnc_hs_counter / voter_counter.to_f) * 100

puts "FINISHED COLLEGE:            #{college_percentage.to_i} %"
puts "FINISHED HIGH SCHOOL:        #{hs_percentage.to_i} %"
puts "DID NOT FINISH HIGH SCHOOL:  #{dnc_hs_percentage.to_i} %\n#{SEP}"
