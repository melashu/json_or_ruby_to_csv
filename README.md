
<a name="readme-top"></a>

# 📗 Table of Contents
[![json_or_ruby_to_ - csv](https://img.shields.io/badge/json__or__ruby__to__-csv-2ea44f)](https://rubygems.org/gems/json_or_ruby_to_csv)

- [📗 Table of Contents](#-table-of-contents)
- [📖 json\_or\_ruby\_to\_csv ](#-json_or_ruby_to_csv-)
  - [Installation ](#installation-)
    - [Usage](#usage)
      - [Using array\_or\_hash\_to\_csv](#using-array_or_hash_to_csv)
      - [Using activerecord\_to\_csv](#using-activerecord_to_csv)
      - [json\_or\_ruby\_to\_csv usage with rails controller](#json_or_ruby_to_csv-usage-with-rails-controller)
  - [👥 Authors ](#-authors-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)

# 📖 json_or_ruby_to_csv <a name="about-project"></a>

This gem converts data from a variety of sources into a comma-separated value (CSV) format. The gem can convert arrays of JSON objects, arrays of hashes, arrays of ActionController params, simple hashes, or ActiveRecord relations and objects. The CSV format is a common way to store data in a tabular format. It is often used for data exchange between different applications.

## Installation <a name="tech-stack"></a>

Add the following code to you Gemfile 

```
gem 'json_or_ruby_to_csv'
```
or 

install the gem on your terminal 

```
gem install json_or_ruby_to_csv
```
    

### Usage

`require` this gem on the top of your ruby code.

#### Using array_or_hash_to_csv


If you want to convert `arrays of JSON objects`, `arrays of hashes`, `arrays of ActionController params`, and `simple hashes` to csv you can use `array_or_hash_to_csv` method from `JsonOrRubyToCsv`. Let's see how:-

> Don't forget to include `JsonOrRubyToCsv` module in your ruby class.

<i>For example </i>

```

require 'json_or_ruby_to_csv'
class Employee
  include JsonOrRubyToCsv

  def get_csv_data(data_list)
   array_or_hash_to_csv(data_list)
  end
end
```
Let's create `Employee` object and send array of object to `get_csv_data` method.
  
```
employee = Employee.new
data_list =  [
    { "id": 200,
      "fname": "Meshu",
      "lname": "Amare",
      "salary": 4500,
      "company": "XYZ.com",
      "position": "DevOps IT Operations"
    },
    
    { "id": 201,
      "fname": "Solomon",
      "lname": "Alebachew",
      "salary": 5000,
      "company": "XYZ.com",
      "position": "Rails Developer"
    },
    {
      "id": 202,
      "fname": "Bini",
      "lname": "Ew",
      "salary": 5000,
      "company": "XYZ.com",
      "position": "Senior Sofware Developer"
    }
  ]

print employee.get_csv_data(data_list)

```

**The output looks like below**

``` 
id,fname,lname,company,position,salary
200,Meshu,Amare,XYZ.com,DevOps IT Operations,4500
201,Solomon,Alebachew,XYZ.com,Rails Developer,5000
203,Bini,Ew,XYZ.com,Senior Sofware Developer,5000 
```

#### Using activerecord_to_csv

If you want to conver `ActiveRecord::Relation` **(collection of objects fetched by `.all` or `.where()`)** or simple ActiveRecord object to csv formated-string you can use `activerecord_to_csv` method from `JsonOrRubyToCsv` module.

*For example*

```

require 'json_or_ruby_to_csv'
class Employee
  include JsonOrRubyToCsv

  def get_data_as_csv
    all_employee = Employee.select(:id, :fname, :lname, :salary, :company, :position)
     activerecord_to_csv(all_employee)
  end
 
end

```
Here `get_data_as_csv` method first retrive data from the database, then pass to `activerecord_to_csv` method and return the data as comma-separated csv formated string. 

Let's create `Employee` object and call `get_data_as_csv` method.

```
employee = Employee.new
employee.get_data_as_csv

```

**The output looks like below**

``` 
id,fname,lname,company,position,salary
200,Meshu,Amare,XYZ.com,DevOps IT Operations,4500
201,Solomon,Alebachew,XYZ.com,Rails Developer,5000
203,Bini,Ew,XYZ.com,Senior Sofware Developer,5000 
```

#### json_or_ruby_to_csv usage with rails controller  

## 👥 Authors <a name="authors"></a>

 👤 Melashu Amare

- GitHub: [@melashu](https://github.com/melashu)
- Twitter: [@meshu102](https://twitter.com/meshu102)
- LinkedIn: [Melashu Amare](https://www.linkedin.com/in/melashu-amare/)

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page.](https://github.com/melashu/json_or_ruby_to_csv/issues)

## ⭐️ Show your support <a name="support"></a>

Give a star if you like this project!
  
<p align="right">(<a href="#readme-top">back to top</a>)</p>
