Book.find_or_create_by(title:"Harry Potter and the Sorcerer's Stone", author: "J. K. Rowling", genre: "fantasy", year_published: 2001)
Book.find_or_create_by(title:"Harry Potter and the Order of the Phoenix", author: "J. K. Rowling", genre: "fantasy", year_published: 2002)
Book.find_or_create_by(title:"Harry Potter and the Chamber of Secrets", author: "J. K. Rowling", genre: "fantasy", year_published: 2003)
Book.find_or_create_by(title:"Harry Potter and the Prisoner of Azkaban", author: "J. K. Rowling", genre: "fantasy", year_published: 2004)

User.create(username:"angelo12", password:"1234")
User.create(username:"angelo22", password:"1234")
User.create(username:"angelo33", password:"1234")
