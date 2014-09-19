package com.tapjoy;

public interface TJEventCallback
{
    void contentDidDisappear(TJEvent p0);
    
    void contentDidShow(TJEvent p0);
    
    void didRequestAction(TJEvent p0, TJEventRequest p1);
    
    void sendEventCompleted(TJEvent p0, boolean p1);
    
    void sendEventFail(TJEvent p0, TJError p1);
}
