# Main resources
rails generate starter:resource account user_id:integer category:string
rails generate starter:resource objective account_id:integer target_portfolio_id:integer name:string category:string target_date:date target_value:float
rails generate starter:resource target_portfolio risk_rank:integer pea_compatible:boolean expected_return:float standard_deviation:float
rails generate starter:resource allocation target_portfolio_id:integer etf_id:integer weight:float
rails generate starter:resource etf name:string ticker:string isin:string asset_class:string currency:string manager:string fee:float
rails generate starter:resource price etf_id:integer close_date:date close_price:float
rails generate starter:resource holding objective_id:integer etf_id:integer shares:float

# Devise User resource with admin boolean
rails g devise:install
# rails generate devise user first_name:string last_name:string dob:date phone:string appartment:string residence:string street:string county:string post_code:string city:string employment_status:string annual_income:float net_worth:float
# rails generate migration add_admin_to_users admin:boolean
rails generate devise user first_name:string last_name:string dob:date phone:string appartment:string residence:string street:string county:string post_code:string city:string employment_status:string annual_income:float net_worth:float admin:boolean
rails generate devise:views

# StaticPages controller for home
rails generate controller static_pages home

# Bootstrap/Bootswatch
rails g starter:style flatly


