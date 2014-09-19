package v2.com.playhaven.resources.types;

import java.util.*;
import android.graphics.*;
import android.content.res.*;
import android.graphics.drawable.*;

public class PHNinePatchResource extends PHImageResource
{
    private HashMap<Integer, NinePatch> nine_patch_cache;
    
    public PHNinePatchResource() {
        super();
        this.nine_patch_cache = new HashMap<Integer, NinePatch>();
    }
    
    private NinePatch loadNinePatch() throws ArrayIndexOutOfBoundsException {
        NinePatch value = this.nine_patch_cache.get(this.densityType);
        if (value == null) {
            final Bitmap loadImage = super.loadImage(this.densityType);
            final byte[] ninePatchChunk = loadImage.getNinePatchChunk();
            if (!NinePatch.isNinePatchChunk(ninePatchChunk)) {
                return null;
            }
            value = new NinePatch(loadImage, ninePatchChunk, (String)null);
            this.nine_patch_cache.put(this.densityType, value);
        }
        return value;
    }
    
    public NinePatch loadNinePatch(final int densityType) {
        super.densityType = densityType;
        return this.loadNinePatch();
    }
    
    public NinePatchDrawable loadNinePatchDrawable(final Resources resources, final int n) throws ArrayIndexOutOfBoundsException {
        return new NinePatchDrawable(resources, this.loadNinePatch(n));
    }
}
