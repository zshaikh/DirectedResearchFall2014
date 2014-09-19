package v2.com.playhaven.listeners;

import v2.com.playhaven.requests.content.*;
import v2.com.playhaven.model.*;

public interface PHPurchaseListener
{
    void onMadePurchase(PHContentRequest p0, PHPurchase p1);
}
