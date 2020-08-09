package templates;

import java.text.DateFormat;
import java.util.*;

public class TimeBean {
    private final Locale[] allLocale = Locale.getAvailableLocales();
    private final String[] zones = TimeZone.getAvailableIDs();

    private int localeIndex;
    private int timeZoneIndex;

    public TimeBean() {
    }

    public Locale[] getAllLocale() {
        return allLocale;
    }

    public String[] getZones() {
        return zones;
    }

    public int getLocaleIndex() {
        return localeIndex;
    }

    public int getTimeZoneIndex() {
        return timeZoneIndex;
    }

    public void setLocaleIndex(int localeIndex) {
        this.localeIndex = localeIndex;
    }

    public void setTimeZoneIndex(int timeZoneIndex) {
        this.timeZoneIndex = timeZoneIndex;
    }

    /**
     * Return a string for the current time
     * with the specified locale and time zone
     */
    public String currentTimeString() {
        Calendar calendar =
                new GregorianCalendar(allLocale[localeIndex]);
        TimeZone timeZone =
                TimeZone.getTimeZone(zones[timeZoneIndex]);
        DateFormat dateFormat = DateFormat.getDateTimeInstance(
                DateFormat.FULL, DateFormat.FULL, allLocale[localeIndex]);
        dateFormat.setTimeZone(timeZone);
        return dateFormat.format(calendar.getTime());
    }
}
