using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaskFlowWebApp
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateAccount_Click(object sender, EventArgs e)
        {

            try
            {
                string userName = username.Text;
                string userEmail = useremail.Text;
                string userPassword = userpassword.Text;

                // Use the connection string from web.config
                string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["Taskflow"].ConnectionString;

                using (MySqlConnection connection = new MySqlConnection(connectionString))
                {
                    connection.Open();

                    // Test query
                    string testQuery = "SELECT 1";
                    using (MySqlCommand testCommand = new MySqlCommand(testQuery, connection))
                    {
                        testCommand.ExecuteScalar();
                    }

                    // Insert user details into the database
                    string query = "INSERT INTO users (username, email, password) VALUES (@username, @email, @password)";
                    using (MySqlCommand command = new MySqlCommand(query, connection))
                    {
                        Response.Write("I entered into database.");
                        command.Parameters.AddWithValue("@username", userName);
                        command.Parameters.AddWithValue("@email", userEmail);
                        command.Parameters.AddWithValue("@password", userPassword);

                        command.ExecuteNonQuery();
                    }

                    // Additional logic (redirect, display message, etc.)
                }
            }
            catch (Exception ex)
            {
                Response.Write("error: "+ ex.Message);
            }
            
        }
    }
}