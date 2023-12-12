using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaskFlowWebApp
{
    public partial class TaskPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Use the connection string from web.config
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["Taskflow"].ConnectionString;
            string userEmail = Session["UserEmail"].ToString();

            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                connection.Open();

                // Query to get the username
                string query = "SELECT username FROM users WHERE email = @email"; // replace with your condition
                using (MySqlCommand command = new MySqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@email", userEmail); // replace "useremail" with the actual user's email

                    using (MySqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            username.Text = reader["username"].ToString();
                        }
                    }
                }
            }
        }
    }
}
