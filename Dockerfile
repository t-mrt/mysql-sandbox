FROM mysql:8.0.23

ENV MYSQL_ALLOW_EMPTY_PASSWORD=yes

COPY test_db /test_db

RUN cp /test_db/employees.sql /docker-entrypoint-initdb.d/employees.sql & \
    cp /test_db/load_departments.dump /test_db/load_employees.dump /test_db/load_dept_emp.dump /test_db/load_dept_manager.dump /test_db/load_titles.dump /test_db/load_salaries1.dump /test_db/load_salaries2.dump /test_db/load_salaries3.dump /test_db/show_elapsed.sql /

