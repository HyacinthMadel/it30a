


   -- Table #1 students table
   CREATE TABLE IF NOT EXISTS students (

    -- Primary key for the students yable
    student_id INT AUTO_INCREMENT PRIMARY KEY,

    
    -- Student name
    student_first_name VARCHAR(50) NOT NULL,
    student_last_name VARCHAR(50) NOT NULL,


    -- Student course
    student_course VARCHAR(50) NOT NULL,

    -- Student created at timestamp
    Student_created_at TIMESTAMP NOT NULL
        DEFAULT CURRENT_TIMESTAMP


   ) ENGINE=InnoDB
   DEFAULT CHARSET=utf8mb4
   COLLATE=utf8mb4_general_ci;

   -- Table #2 books

   CREATE TABLE IF NOT EXISTS books(
    -- primary key for books table
    book_id INT AUTO_INCREMENT PRIMARY KEY,

    -- Book details
    book_tittle VARCHAR(50) NOT NULL,
    book_author VARCHAR(50) NOT NULL,
    book_category VARCHAR(50) NOT NULL,

    -- Book created at timestamp
    book_created_at TIMESTAMP

)ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;

    -- Table #3 borrow
    CREATE TABLE IF NOT EXISTS borrow(
        -- Primary key for borrow table
        borrow_id INT AUTO_INCREMENT PRIMARY KEY,

        -- Foreign key references
        student_id INT NOT NULL,
        book_id INT NOT NULL,

        -- Borrow timestamp not null by default
        borrow_date TIMESTAMP NOT NULL
        DEFAULT CURRENT_TIMESTAMP,

        -- Borrow return timestamp null by default
        borrow_return_date TIMESTAMP NULL
            DEFAULT NULL,

        -- Borrow table conStraints and foreign keys
        CONSTRAINT fk_borrow_student
            FOREIGN KEY (student_id)
            REFERENCES student (student_id)
            ON UPDATE CASCADE
            ON DELETE RESTRICT,

        CONSTRAINT fk_borrow_book
        FOREIGN KEY books (books_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,


)ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;

-- Insert statement #1: insert Students
INSERT INTO students(
    student_first_name,
    student_last_name,
    student_course
) VALUES
    ('hyacinth madel','udtohan','BSIT')
    ('shylo','barsobia','BSBA')
    ('Crisliam','barsobia','ABM')

-- Insert statement #2: Insert Books
INSERT INTO books(
    book_tittle,
    book_author,
    book_category
) VALUES
    ('Triplets Father','KPGreen','RomCom')
    ('Married to Unkwon','CloudMeadows','Mystery')
    ('Seventh Sense','purpleyhan','Detective')
-- Insert statement #3: Insert Borrow transactions