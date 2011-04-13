import java.io.*;

public class Test
{
  public static void main(String args[]) throws Exception
  {
    try
    {
      InputStreamReader inStream = new InputStreamReader(System.in);
      BufferedReader    stdin    = new BufferedReader(inStream);
      String            input    = stdin.readLine();
      System.out.println("input="+input);
      input    = stdin.readLine();
      System.out.println("input="+input);
    }
    catch(Exception e)
    {
      throw(e);
    }
  }
}