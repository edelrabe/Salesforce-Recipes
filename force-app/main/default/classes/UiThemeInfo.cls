/**
 * This is not recommended, since controllers should neutral in terms of the UX context.
 */
public with sharing class UiThemeInfo 
{
    public static String getContextUserUiTheme() 
    {
        return UserInfo.getUiTheme();
    }
    
    
    public static String getContextUserUiThemeDisplayed() 
    {
        return UserInfo.getUiThemeDisplayed();
    }
    
    
    public static void tryThisAlsoButDoNotUse()
    {
        User currentUser = [
            SELECT UserPreferencesLightningExperiencePreferred 
            FROM User 
            WHERE Id = :UserInfo.getUserId()
        ];
        
        System.debug(currentUser);
    }
}
