import sqlite3

def print_all_tables(database_file):
    try:
        # Connect to the SQLite database
        connection = sqlite3.connect(database_file)
        cursor = connection.cursor()
        
        # Query to fetch all table names
        query = "SELECT name FROM sqlite_master WHERE type='table';"
        cursor.execute(query)
        
        # Fetch all results
        tables = cursor.fetchall()
        
        # Print the names of the tables
        if tables:
            print("Tables found in the database:")
            for table in tables:
                print(f"- {table[0]}")
        else:
            print("No tables found in this database.")
            
    except sqlite3.Error as error:
        print(f"Error connecting to database: {error}")
        
    finally:
        # Clean up and close the connection
        if connection:
            connection.close()

# Example usage:
# Replace 'my_database.db' with your actual database file name
print_all_tables('my_database.db')