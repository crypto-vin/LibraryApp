
books = [
  { title: 'To Kill a Mockingbird', author: 'Harper Lee', isbn: '9780061120084' },
  { title: '1984', author: 'George Orwell', isbn: '9780451524935' },
  { title: 'Pride and Prejudice', author: 'Jane Austen', isbn: '9780141439518' },
  { title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', isbn: '9780743273565' },
  { title: 'Moby-Dick', author: 'Herman Melville', isbn: '9781503280786' },
  { title: 'War and Peace', author: 'Leo Tolstoy', isbn: '9781400079988' },
  { title: 'Crime and Punishment', author: 'Fyodor Dostoevsky', isbn: '9780486415871' },
  { title: 'The Catcher in the Rye', author: 'J.D. Salinger', isbn: '9780316769488' },
  { title: 'The Hobbit', author: 'J.R.R. Tolkien', isbn: '9780345339683' },
  { title: 'Brave New World', author: 'Aldous Huxley', isbn: '9780060850524' },
  { title: 'The Lord of the Rings', author: 'J.R.R. Tolkien', isbn: '9780618640157' },
  { title: 'The Grapes of Wrath', author: 'John Steinbeck', isbn: '9780143039433' },
  { title: 'Anna Karenina', author: 'Leo Tolstoy', isbn: '9780143035008' },
  { title: 'The Brothers Karamazov', author: 'Fyodor Dostoevsky', isbn: '9780374528379' },
  { title: 'The Divine Comedy', author: 'Dante Alighieri', isbn: '9780142437223' },
  { title: 'Jane Eyre', author: 'Charlotte Brontë', isbn: '9780141441146' },
  { title: 'Wuthering Heights', author: 'Emily Brontë', isbn: '9780141439556' },
  { title: 'The Picture of Dorian Gray', author: 'Oscar Wilde', isbn: '9780141442464' },
  { title: 'Frankenstein', author: 'Mary Shelley', isbn: '9780486282114' },
  { title: 'Dracula', author: 'Bram Stoker', isbn: '9780486411095' },
  { title: 'Les Misérables', author: 'Victor Hugo', isbn: '9780451419439' },
  { title: 'Don Quixote', author: 'Miguel de Cervantes', isbn: '9780060934347' },
  { title: 'The Odyssey', author: 'Homer', isbn: '9780140268867' },
  { title: 'The Iliad', author: 'Homer', isbn: '9780140275360' },
  { title: 'The Metamorphosis', author: 'Franz Kafka', isbn: '9780553213690' },
  { title: 'The Stranger', author: 'Albert Camus', isbn: '9780679720201' },
  { title: 'The Road', author: 'Cormac McCarthy', isbn: '9780307387899' },
  { title: 'One Hundred Years of Solitude', author: 'Gabriel García Márquez', isbn: '9780060883287' },
  { title: 'Catch-22', author: 'Joseph Heller', isbn: '9781451626650' },
  { title: 'Slaughterhouse-Five', author: 'Kurt Vonnegut', isbn: '9780385333849' },
  { title: 'Fahrenheit 451', author: 'Ray Bradbury', isbn: '9781451673319' },
  { title: 'Dune', author: 'Frank Herbert', isbn: '9780441013593' },
  { title: 'The Sun Also Rises', author: 'Ernest Hemingway', isbn: '9780743297332' },
  { title: 'A Farewell to Arms', author: 'Ernest Hemingway', isbn: '9780684801469' },
  { title: 'The Old Man and The Sea', author: 'Ernest Hemingway', isbn: '9780684801223' },
  { title: 'Mere Christianity', author: 'C.S. Lewis', isbn: '9780060652920' },
  { title: 'The Chronicles of Narnia', author: 'C.S. Lewis', isbn: '9780066238500' },
  { title: 'The Alchemist', author: 'Paulo Coelho', isbn: '9780061122415' },
  { title: 'The Book Thief', author: 'Markus Zusak', isbn: '9780375842207' },
  { title: 'The Kite Runner', author: 'Khaled Hosseini', isbn: '9781594631931' },
  { title: 'A Thousand Splendid Suns', author: 'Khaled Hosseini', isbn: '9781594483851' },
  { title: 'Beloved', author: 'Toni Morrison', isbn: '9781400033416' },
  { title: 'Invisible Man', author: 'Ralph Ellison', isbn: '9780679732761' },
  { title: 'Gone with the Wind', author: 'Margaret Mitchell', isbn: '9781416548942' },
  { title: 'The Handmaid’s Tale', author: 'Margaret Atwood', isbn: '9780385490818' },
  { title: 'The Hitchhiker’s Guide to the Galaxy', author: 'Douglas Adams', isbn: '9780345391802' },
  { title: 'The Shining', author: 'Stephen King', isbn: '9780307743657' },
  { title: 'It', author: 'Stephen King', isbn: '9781501142970' },
  { title: 'Dreams From My Father', author: 'Barack Obama', isbn: '9780347616923' }
]

books.each do |book|
    Book.find_or_create_by!(isbn: book[:isbn]) do |b|
        b.title = book[:title]
        b.author = book[:author]
    end
end
  
puts "✅ Seeded #{books.length} books into the database."