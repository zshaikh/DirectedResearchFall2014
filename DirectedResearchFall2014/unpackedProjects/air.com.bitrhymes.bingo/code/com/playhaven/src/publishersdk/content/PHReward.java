package com.playhaven.src.publishersdk.content;

import v2.com.playhaven.model.*;

public class PHReward extends v2.com.playhaven.model.PHReward
{
    public PHReward(final v2.com.playhaven.model.PHReward phReward) {
        super();
        this.name = phReward.name;
        this.quantity = phReward.quantity;
        this.receipt = phReward.receipt;
    }
}
