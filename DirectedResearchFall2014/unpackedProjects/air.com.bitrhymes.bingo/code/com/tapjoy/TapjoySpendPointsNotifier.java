package com.tapjoy;

public interface TapjoySpendPointsNotifier
{
    void getSpendPointsResponse(String p0, int p1);
    
    void getSpendPointsResponseFailed(String p0);
}
