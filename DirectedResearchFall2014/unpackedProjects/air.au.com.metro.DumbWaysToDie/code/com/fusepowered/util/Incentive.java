package com.fusepowered.util;

public class Incentive
{
    private int amount;
    private boolean claimConfirmed;
    private int incentiveId;
    private String rewardItemId;
    private String rewardItemName;
    
    public int getAmount() {
        return this.amount;
    }
    
    public int getIncentiveId() {
        return this.incentiveId;
    }
    
    public String getRewardItemId() {
        return this.rewardItemId;
    }
    
    public String getRewardItemName() {
        return this.rewardItemName;
    }
    
    public boolean isClaimConfirmed() {
        return this.claimConfirmed;
    }
    
    public void setAmount(final int amount) {
        this.amount = amount;
    }
    
    public void setClaimConfirmed(final boolean claimConfirmed) {
        this.claimConfirmed = claimConfirmed;
    }
    
    public void setIncentiveId(final int incentiveId) {
        this.incentiveId = incentiveId;
    }
    
    public void setRewardItemId(final String rewardItemId) {
        this.rewardItemId = rewardItemId;
    }
    
    public void setRewardItemName(final String rewardItemName) {
        this.rewardItemName = rewardItemName;
    }
    
    @Override
    public String toString() {
        return "Incentive [incentiveId=" + this.incentiveId + ", amount=" + this.amount + ", rewardItemId=" + this.rewardItemId + ", rewardItemName=" + this.rewardItemName + ", claimConfirmed=" + this.claimConfirmed + ']';
    }
}
