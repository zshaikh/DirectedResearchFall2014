package com.playhaven.src.publishersdk.content.adapters;

import v2.com.playhaven.listeners.*;
import com.playhaven.src.publishersdk.content.*;
import v2.com.playhaven.requests.content.*;
import v2.com.playhaven.model.*;

public class RewardDelegateAdapter implements PHRewardListener
{
    private PHPublisherContentRequest.RewardDelegate delegate;
    
    public RewardDelegateAdapter(final PHPublisherContentRequest.RewardDelegate delegate) {
        super();
        this.delegate = delegate;
    }
    
    @Override
    public void onUnlockedReward(final PHContentRequest phContentRequest, final PHReward phReward) {
        this.delegate.unlockedReward((PHPublisherContentRequest)phContentRequest, new com.playhaven.src.publishersdk.content.PHReward(phReward));
    }
}
