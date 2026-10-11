# Load and explore csv data 

<a href="https://youtu.be/JqvrH7XXFUI" target="_blank">
  <img src="https://github.com/kokchun/assets/blob/main/oracledb/load_csv.png?raw=true" alt="load csv using sqlcl" width="600">
</a>


Data used in this [lecture comes from here](https://www.kaggle.com/datasets/kaggle/sf-salaries)


To avoid line wrapping and allow for scrolling, you can pipe the results into the almighty pager less 

```bash
orac script.sql | less -RS
```

## Working with csv files

Using sqlcl we can very easily read in csv files (comma separated values) into a table, with columns data types inferred. Note that this is very cumbersome with the legacy SQLplus. This is the way to do it in sqlcl 

```sql
LOAD salaries_sf Salaries.csv NEW
```

Then to export we use output redirection in bash combined with 

```sql
SET SQLFORMAT csv
SET FEEDBACK OFF
```

Then we use output redirection like this using grep -v to remove the 'oracle-free' which is printed out because of podman

```bash
orac script.sql | grep -v 'oracle-free' > new_csv_file.csv 
```


## Other videos 📹

## Read more 👓
