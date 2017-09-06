// timeLeft2.aspx.cs
//   The code behind file for timeLeft2.aspx
//   Defines a class with a method to compute and
//   display the days, hours, and minutes left
//   this year
          
using System;
using System.Web;
using System.Web.UI;

public class TimeLeft2 : Page {
 
      string msg, days, hours, minutes;
      TimeSpan timeSpan;

  public void timer() {

// Set date/time of New Years Day and right now
      DateTime rightnow = DateTime.Now;
      DateTime newYears = new DateTime(2012, 1, 1);

// Compute the difference in time/dates
      timeSpan = newYears.Subtract(rightnow);

// Compute and display the differences in days, hours, and minutes
      days = timeSpan.Days.ToString();
      msg = string.Format("Days: {0},  ", days);
      Response.Write(msg);
      hours = timeSpan.Hours.ToString();
      msg = string.Format("Hours: {0},  ", hours);
      Response.Write(msg);
      minutes = timeSpan.Minutes.ToString();
      msg = string.Format("Minutes: {0} <br />", minutes);
      Response.Write(msg);
  }
}
