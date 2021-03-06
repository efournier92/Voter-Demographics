##Voter Demographics

This is a small program I wrote, that takes a hash and tallies demographics from the sample, outputting results to the command line.

Based on the sample data provided, my code will output the following demographical statics about the sample.

* Average age
* Average income
* Average household size
* Percentage Female
* Percentage Male
* Percentage Unspecified Gender
* Percent of those with college education
* Percent of those with high school education
* Percent of those who did not finish high school

The sample data structure is located in `app.rb`, and can be altered to suit your needs. The default output is based on the following data:

```no-highlight
First Name, Last Name, Age, Income, Household Size, Gender,       Education
Jon,        Smith,     25,  50000,  1,              Male,         College
Jane,       Davies,    30,  60000,  3,              Female,       High School
Sam,        Farelly,   32,  80000,  2,              Unspecified,  College
Joan,       Favreau,   35,  65000,  4,              Female,       College
Sam,        McNulty,   38,  63000,  3,              Male,         College
Mark,       Minahan,   48,  78000,  5,              Male,         High School
Susan,      Umani,     45,  75000,  2,              Female,       College
Bill,       Perault,   24,  45000,  1,              Male,         DNC HS
Doug,       Stamper,   45,  75000,  1,              Male,         College
Francis,    Underwood, 52,  100000, 2,              Male,         College
```
