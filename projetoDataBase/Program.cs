using MySql.Data.MySqlClient;

// Substitua as informações de conexão com seu próprio servidor e banco de dados
string connectionString = "server=localhost;port=3306;database=dbempresa;uid=root;password=12345";

using (MySqlConnection connection = new MySqlConnection(connectionString))
{
    try
    {
        connection.Open();

        // Consulta SQL de exemplo
        string sqlQuery = "SELECT * FROM emp";

        using (MySqlCommand command = new MySqlCommand(sqlQuery, connection))
        {
            using (MySqlDataReader reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    string nome = reader["Nome"].ToString();

                    Console.WriteLine($"Nome: {nome}");
                }
            }
        }
    }
    catch (Exception ex)
    {
        Console.WriteLine("Ocorreu um erro: " + ex.Message);
    }
}

Console.ReadKey();