package v2.com.playhaven.resources.types;

import android.graphics.*;
import java.util.*;
import android.util.*;

public class PHImageResource extends PHResource
{
    private Hashtable<Integer, Bitmap> cached_images;
    private Hashtable<Integer, String> data_map;
    protected int densityType;
    
    public PHImageResource() {
        super();
        this.cached_images = new Hashtable<Integer, Bitmap>();
        this.data_map = new Hashtable<Integer, String>();
        this.densityType = 160;
    }
    
    private Bitmap getClosestImage(final int n) {
        if (this.data_map.size() == 0) {
            return null;
        }
        int n2 = Integer.MAX_VALUE;
        int intValue = 160;
        for (final Integer n3 : this.data_map.keySet()) {
            final int abs = Math.abs(n3 - n);
            if (abs < n2) {
                intValue = n3;
                n2 = abs;
            }
        }
        final byte[] data = this.getData(intValue);
        if (data == null) {
            return null;
        }
        final Bitmap decodeByteArray = BitmapFactory.decodeByteArray(data, 0, data.length);
        if (decodeByteArray != null) {
            decodeByteArray.setDensity(intValue);
        }
        return decodeByteArray;
    }
    
    private Bitmap loadImage() throws ArrayIndexOutOfBoundsException {
        Bitmap closestImage = this.cached_images.get(new Integer(this.densityType));
        if (closestImage == null) {
            closestImage = this.getClosestImage(this.densityType);
            if (closestImage == null) {
                throw new ArrayIndexOutOfBoundsException("You have not specified image data for the requested density or the image data is invalid");
            }
            this.cached_images.put(new Integer(this.densityType), closestImage);
        }
        return closestImage;
    }
    
    @Override
    public byte[] getData() {
        throw new UnsupportedOperationException("You must use getData(density) when loading images");
    }
    
    public byte[] getData(final int value) {
        final String s = this.data_map.get(new Integer(value));
        if (s == null) {
            return null;
        }
        return Base64.decode(s.getBytes(), 1);
    }
    
    public Bitmap loadImage(final int densityType) throws ArrayIndexOutOfBoundsException {
        this.densityType = densityType;
        return this.loadImage();
    }
    
    public void setDataStr(final int value, final String value2) {
        if (value2 != null) {
            this.data_map.put(new Integer(value), value2);
        }
    }
    
    @Override
    public void setDataStr(final String s) {
        throw new UnsupportedOperationException("You must use setDataStr(density, data) when setting image data");
    }
    
    public void setDataStr(final int[] array, final String s) {
        for (int length = array.length, i = 0; i < length; ++i) {
            this.setDataStr(array[i], s);
        }
    }
}
