package v2.com.playhaven.listeners;

import v2.com.playhaven.model.*;
import java.nio.*;

public interface PHHttpRequestListener
{
    void onHttpRequestFailed(PHError p0);
    
    void onHttpRequestSucceeded(ByteBuffer p0, int p1);
}
