using System;

public class ReserveMLW {
    public static void RestaurantLogin() {
        // fetch email address and password from display
        // save into variables

        CompareInfo(emailAddress, password); // call from db class, returns boolean
        // if true, successful. else, reenter info
    }

    public static void RegisterRestaurant () {
        isValid(emailAddress); // if returns false, call saveData (string emailAddress, string password, int phoneNumber, string location, string restaurantName)
    }

    public static isValid (string emailAddress) {
        CheckData (emailAddress); // returns boolean
    }

}
