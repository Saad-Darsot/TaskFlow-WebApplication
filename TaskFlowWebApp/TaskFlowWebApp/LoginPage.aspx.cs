using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace TaskFlowWebApp
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GoToWelcomePage(object sender, EventArgs e)
        {

            // ...
            try
            {
                // Get user input from the form
                string userEmail = email.Text;
                string userPassword = password.Text;

                // You should use parameterized queries to prevent SQL injection
                string connectionString = ConfigurationManager.ConnectionStrings["Taskflow"].ConnectionString; // Replace with your actual MySQL connection string

                using (MySqlConnection connection = new MySqlConnection(connectionString))
                {
                    connection.Open();

                    // Check if the user exists in the database
                    string query = "SELECT COUNT(*) FROM Users WHERE Email = @Email AND Password = @Password";
                    using (MySqlCommand command = new MySqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@email", userEmail);
                        command.Parameters.AddWithValue("@password", userPassword);

                        int count = Convert.ToInt32(command.ExecuteScalar());

                        if (count > 0)
                        {
                            // User exists, allow login
                            Session["UserEmail"] = userEmail;
                            Response.Redirect("TaskPage.aspx");
                        }
                        else
                        {
                            // User not found, display a message or redirect to the signup page
                            Response.Write("Invalid email or password. Please create an account.");
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.Message);
            }

        }
    }
}