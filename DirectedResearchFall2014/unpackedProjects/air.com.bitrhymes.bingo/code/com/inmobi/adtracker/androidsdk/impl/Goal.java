package com.inmobi.adtracker.androidsdk.impl;

import java.io.*;

public class Goal implements Serializable
{
    private int a;
    private String b;
    private long c;
    
    public Goal() {
        super();
        this.setGoalCount(0);
        this.setGoalName(null);
        this.setRetryTime(0L);
    }
    
    public Goal(final String goalName, final int n, final long n2) {
        super();
        int goalCount;
        if (n < 0) {
            goalCount = 0;
        }
        else {
            goalCount = n;
        }
        long retryTime;
        if (n2 < 0L) {
            retryTime = 0L;
        }
        else {
            retryTime = n2;
        }
        this.setGoalCount(goalCount);
        this.setGoalName(goalName);
        this.setRetryTime(retryTime);
    }
    
    public int getGoalCount() {
        return this.a;
    }
    
    public String getGoalName() {
        return this.b;
    }
    
    public long getRetryTime() {
        return this.c;
    }
    
    public void setGoalCount(final int a) {
        this.a = a;
    }
    
    public void setGoalName(final String b) {
        this.b = b;
    }
    
    public void setRetryTime(final long c) {
        this.c = c;
    }
}
