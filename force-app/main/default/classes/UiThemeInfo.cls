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
}
