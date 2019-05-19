public class main {
    public static void main(String[] args) {
        if (args.length > 1) {
            System.out.print("Your first param is : " + args[0] + " second : " + args[1]);
        } else if (args.length > 0)
            System.out.print("Your first param is : " + args[0]);
        else {
            System.out.print("You dont have any params");
        }
    }
}
