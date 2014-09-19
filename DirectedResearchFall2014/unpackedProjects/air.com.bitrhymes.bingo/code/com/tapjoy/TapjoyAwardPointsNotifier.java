package com.tapjoy;

public interface TapjoyAwardPointsNotifier
{
    void getAwardPointsResponse(String p0, int p1);
    
    void getAwardPointsResponseFailed(String p0);
}
