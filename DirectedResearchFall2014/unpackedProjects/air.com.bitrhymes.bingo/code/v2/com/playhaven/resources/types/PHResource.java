package v2.com.playhaven.resources.types;

import android.util.*;
import java.io.*;

public class PHResource
{
    private String data;
    private String key;
    
    public byte[] getData() {
        return Base64.decode(this.data, 1);
    }
    
    public String getResourceKey() {
        return this.key;
    }
    
    public void setDataByte(final byte[] bytes) throws UnsupportedEncodingException {
        this.data = new String(bytes, "UTF-8");
    }
    
    public void setDataStr(final String data) {
        this.data = data;
    }
    
    public void setResourceKey(final String key) {
        this.key = key;
    }
}
