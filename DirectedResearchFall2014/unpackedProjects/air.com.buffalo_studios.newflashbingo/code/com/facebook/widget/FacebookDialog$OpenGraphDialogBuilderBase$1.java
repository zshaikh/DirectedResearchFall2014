package com.facebook.widget;

import android.graphics.*;
import java.io.*;
import android.app.*;
import org.json.*;
import android.os.*;
import com.facebook.model.*;
import com.facebook.*;
import c.m.x.a.gv.*;
import java.util.*;
import com.facebook.internal.*;
import android.content.*;

class FacebookDialog$OpenGraphDialogBuilderBase$1 implements FacebookDialog$OnPresentCallback
{
    final /* synthetic */ FacebookDialog$OpenGraphDialogBuilderBase this$0;
    
    FacebookDialog$OpenGraphDialogBuilderBase$1(final FacebookDialog$OpenGraphDialogBuilderBase this$0) {
        this.this$0 = this$0;
        super();
    }
    
    @Override
    public void onPresent(final Context context) {
        if (this.this$0.imageAttachments != null && this.this$0.imageAttachments.size() > 0) {
            getAttachmentStore().addAttachmentsForCall(context, this.this$0.appCall.getCallId(), this.this$0.imageAttachments);
        }
        if (this.this$0.imageAttachmentFiles != null && this.this$0.imageAttachmentFiles.size() > 0) {
            getAttachmentStore().addAttachmentFilesForCall(context, this.this$0.appCall.getCallId(), this.this$0.imageAttachmentFiles);
        }
    }
}
