package v2.com.playhaven.listeners;

import v2.com.playhaven.requests.content.*;
import v2.com.playhaven.model.*;

public interface PHRewardListener
{
    void onUnlockedReward(PHContentRequest p0, PHReward p1);
}
