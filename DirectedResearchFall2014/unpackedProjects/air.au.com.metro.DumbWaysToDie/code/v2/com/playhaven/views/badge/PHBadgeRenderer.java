package v2.com.playhaven.views.badge;

import android.graphics.drawable.*;
import android.content.*;
import v2.com.playhaven.utils.*;
import org.json.*;
import android.content.res.*;
import v2.com.playhaven.resources.types.*;
import v2.com.playhaven.resources.*;
import android.graphics.*;

public class PHBadgeRenderer extends AbstractBadgeRenderer
{
    private final float TEXT_SIZE;
    private final float TEXT_SIZE_REDUCE;
    private NinePatchDrawable badgeImage;
    private Paint whitePaint;
    
    public PHBadgeRenderer() {
        super();
        this.TEXT_SIZE = 17.0f;
        this.TEXT_SIZE_REDUCE = 8.0f;
    }
    
    private Paint getTextPaint(final Context context) {
        if (this.whitePaint == null) {
            (this.whitePaint = new Paint()).setStyle(Paint$Style.FILL);
            this.whitePaint.setAntiAlias(true);
            this.whitePaint.setTextSize(PHConversionUtils.dipToPixels(context, 17.0f));
            this.whitePaint.setColor(-1);
        }
        return this.whitePaint;
    }
    
    private int requestedValue(final JSONObject jsonObject) {
        if (jsonObject == null || jsonObject.isNull("value")) {
            return 0;
        }
        return jsonObject.optInt("value", -1);
    }
    
    @Override
    public void draw(final Context context, final Canvas canvas, final JSONObject jsonObject) {
        final int requestedValue = this.requestedValue(jsonObject);
        if (requestedValue == 0) {
            return;
        }
        this.badgeImage.setBounds(this.size(context, jsonObject));
        this.badgeImage.draw(canvas);
        canvas.drawText(Integer.toString(requestedValue), PHConversionUtils.dipToPixels(context, 10.0f), PHConversionUtils.dipToPixels(context, 17.0f), this.getTextPaint(context));
    }
    
    @Override
    public void loadResources(final Context context, final Resources resources) {
        (this.badgeImage = ((PHNinePatchResource)PHResourceManager.sharedResourceManager().getResource("badge_image")).loadNinePatchDrawable(resources, context.getResources().getDisplayMetrics().densityDpi)).setFilterBitmap(true);
    }
    
    @Override
    public Rect size(final Context context, final JSONObject jsonObject) {
        final float n = this.badgeImage.getMinimumWidth();
        final float n2 = this.badgeImage.getMinimumHeight();
        if (this.requestedValue(jsonObject) == 0) {
            return new Rect(0, 0, 0, 0);
        }
        return new Rect(0, 0, (int)(n + this.getTextPaint(context).measureText(String.valueOf(this.requestedValue(jsonObject))) - PHConversionUtils.dipToPixels(context, 8.0f)), (int)n2);
    }
}
