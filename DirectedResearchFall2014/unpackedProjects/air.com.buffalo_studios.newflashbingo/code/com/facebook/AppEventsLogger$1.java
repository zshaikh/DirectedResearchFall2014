package com.facebook;

import java.util.*;

final class AppEventsLogger$1 extends HashMap<String, AppEventsLogger$EventSuppression>
{
    AppEventsLogger$1() {
        super();
        this.put("fb_mobile_activate_app", new AppEventsLogger$EventSuppression(300, AppEventsLogger$SuppressionTimeoutBehavior.RESET_TIMEOUT_WHEN_LOG_ATTEMPTED));
    }
}
