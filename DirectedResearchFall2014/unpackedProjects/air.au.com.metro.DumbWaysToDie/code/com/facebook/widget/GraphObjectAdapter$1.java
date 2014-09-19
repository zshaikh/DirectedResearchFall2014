package com.facebook.widget;

import java.text.*;
import android.content.*;
import com.facebook.*;
import com.milkmangames.extensions.android.goviral.*;
import android.graphics.*;
import java.util.*;
import android.view.*;
import org.json.*;
import com.facebook.model.*;
import java.net.*;
import android.widget.*;

class GraphObjectAdapter$1 implements Comparator
{
    final /* synthetic */ GraphObjectAdapter this$0;
    final /* synthetic */ Collator val$collator;
    
    GraphObjectAdapter$1(final GraphObjectAdapter this$0, final Collator val$collator) {
        this.this$0 = this$0;
        this.val$collator = val$collator;
        super();
    }
    
    public int compare(final GraphObject graphObject, final GraphObject graphObject2) {
        return compareGraphObjects(graphObject, graphObject2, this.this$0.sortFields, this.val$collator);
    }
}
