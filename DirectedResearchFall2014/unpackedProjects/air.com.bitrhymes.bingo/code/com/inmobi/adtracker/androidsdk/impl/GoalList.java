package com.inmobi.adtracker.androidsdk.impl;

import com.inmobi.adtracker.androidsdk.impl.net.*;
import com.inmobi.commons.internal.*;
import java.util.*;

public class GoalList extends Vector<Goal>
{
    public boolean addGoal(final String s, final int n, final long retryTime) {
        NetworkInterface.isSynced.set(false);
        if (s == null || "".equals(s.trim())) {
            IMLog.debug("IMAdTrackerSDK_V_2_5_1", "GoalName is null");
            return false;
        }
        if (n < 1 || retryTime < 0L) {
            IMLog.internal("IMAdTrackerSDK_V_2_5_1", "GoalCount cant be 0 or RetryTime cannot be negative");
            return false;
        }
        try {
            while (true) {
                for (final Goal goal : this) {
                    if (goal.getGoalName().equals(s)) {
                        if (!"download".equals(s)) {
                            goal.setGoalCount(n + goal.getGoalCount());
                        }
                        goal.setRetryTime(retryTime);
                        final int n2 = 1;
                        if (n2 == 0) {
                            this.add(new Goal(s, n, retryTime));
                        }
                        IMFileOperations.saveToFile(Utils.getAppContext(), "eventlog", this);
                        return true;
                    }
                }
                final int n2 = 0;
                continue;
            }
        }
        catch (Exception ex) {
            return false;
        }
    }
    
    public Goal getGoal(final String anObject) {
        if (anObject == null || "".equals(anObject.trim())) {
            IMLog.debug("IMAdTrackerSDK_V_2_5_1", "GoalName is null");
            return null;
        }
        try {
            for (final Goal goal : this) {
                if (goal.getGoalName().equals(anObject)) {
                    return goal;
                }
            }
            return null;
        }
        catch (Exception ex) {
            return null;
        }
    }
    
    public GoalList getLoggedGoals() {
        if (IMFileOperations.readFromFile(Utils.getAppContext(), "eventlog") != null) {
            return (GoalList)IMFileOperations.readFromFile(Utils.getAppContext(), "eventlog");
        }
        return new GoalList();
    }
    
    public boolean removeGoal(final String anObject, final int n) {
        NetworkInterface.isSynced.set(false);
        if (anObject == null || "".equals(anObject.trim())) {
            IMLog.debug("IMAdTrackerSDK_V_2_5_1", "GoalName is null");
            return false;
        }
        if (n < 1) {
            IMLog.internal("IMAdTrackerSDK_V_2_5_1", "GoalCount cannot be 0 or negative");
            return false;
        }
        for (final Goal goal : this) {
            if (goal.getGoalName().equals(anObject)) {
                final int goalCount = goal.getGoalCount() - n;
                if (anObject.equals("download")) {
                    this.remove(goal);
                    break;
                }
                if (goalCount <= 0) {
                    this.remove(goal);
                    break;
                }
                goal.setGoalCount(goalCount);
                break;
            }
        }
        IMFileOperations.saveToFile(Utils.getAppContext(), "eventlog", this);
        return true;
    }
    
    public void saveGoals() {
        IMFileOperations.saveToFile(Utils.getAppContext(), "eventlog", this);
    }
}
