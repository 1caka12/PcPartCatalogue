using System;
using MySql.Data.MySqlClient;

namespace PcPartCatalog
{
    class Program
    { 
        private static void InsertionDeletionProducts(MySqlConnection connection)
        {
            Console.WriteLine("Add or remove item?(add/remove)");
            string addOrRemove = Console.ReadLine();

            string productType;

            if(addOrRemove=="add")
            {
                Console.WriteLine("Insert type of product: ");
                productType = Console.ReadLine();

                Console.WriteLine("Insert model: ");
                string model = Console.ReadLine();

                Console.WriteLine("Insert price: ");
                string price = Console.ReadLine();

                string newItem = $"INSERT INTO Catalog.{productType}_catalogue ({productType}, {productType}_price) VALUES ('{model}', '{price}');";
                MySqlCommand command = new MySqlCommand(newItem,connection);
                command.ExecuteNonQuery();

                Console.WriteLine("Insertion complete!");
            }
           else
            {   
                Console.WriteLine("Type of product:");
                productType = Console.ReadLine();

                Console.WriteLine("Insert item ID: ");
                string itemID= Console.ReadLine();
                
                string itemRemove = $"DELETE FROM Catalog.{productType}_catalogue WHERE id{productType}_catalogue = {itemID}";
                MySqlCommand command = new MySqlCommand(itemRemove,connection);
                command.ExecuteNonQuery();

                Console.WriteLine("Deletion complete!");
            }


        }
        private static void DisplayProducts(string productType)
        {
            string connectionString = "server=localhost;user=root;database=Catalog;port=3306;password=root";
            MySqlConnection connection = new MySqlConnection(connectionString);
            connection.Open();

            string catalogQuery = $"SELECT * From Catalog.{productType}_catalogue";
            MySqlCommand command = new MySqlCommand(catalogQuery,connection);
            MySqlDataReader reader = command.ExecuteReader();

            if(productType=="psu")
            {
                while(reader.Read())
                {
                   Console.WriteLine(reader[0]+" -- "+reader[1]+" - "+reader[2]+" BGN"+" - "+reader[3]);
                }  
            }
            else
            {
                while(reader.Read())
                {
                    Console.WriteLine(reader[0]+" -- "+reader[1]+" - "+reader[2]+" BGN");
                }   
            }
            connection.Close();
        }
        private static void Purchase(MySqlConnection connection)
        {  
            string productChoice = "y";
            double price = .0;

            while(productChoice!="n")
            {
                Console.WriteLine("Choose a type of product: cpu, gpu, hdd, mobo, psu, ram, sdd");
                string productType = Console.ReadLine();

                DisplayProducts(productType);

                Console.WriteLine("Choose index of product");

                string index = Console.ReadLine();
                string productQuery = $"SELECT {productType}_price FROM Catalog.{productType}_catalogue WHERE id{productType}_catalogue = '{index}'";
                MySqlCommand command = new MySqlCommand(productQuery,connection);

                double productPrice = Convert.ToDouble(command.ExecuteScalar());
                price+=productPrice;

                Console.WriteLine("Choose another product? y/n");
                productChoice = Console.ReadLine();
            }           
            Console.WriteLine("A grand total of: "+price+" BGN");            
        }
       
        static void Main(string[] args)
        {
            string connectionString = "server=localhost;user=root;database=Catalog;port=3306;password=root";
            MySqlConnection connection = new MySqlConnection(connectionString);
            connection.Open();

            Console.WriteLine("client or admin?:");
            string user = Console.ReadLine();

            if(user=="admin")
            {
                InsertionDeletionProducts(connection);
            }
            else
            {
                Purchase(connection);
            }

            connection.Close();
            
        }

    }
}
