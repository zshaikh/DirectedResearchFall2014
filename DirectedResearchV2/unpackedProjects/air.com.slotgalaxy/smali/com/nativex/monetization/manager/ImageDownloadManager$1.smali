.class Lcom/nativex/monetization/manager/ImageDownloadManager$1;
.super Ljava/lang/Object;
.source "ImageDownloadManager.java"

# interfaces
.implements Lcom/nativex/common/OnRequestCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nativex/monetization/manager/ImageDownloadManager;->downloadBitmap(Ljava/lang/String;Lcom/nativex/monetization/manager/ImageDownloadManager$OnDownloadComplete;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nativex/monetization/manager/ImageDownloadManager;

.field final synthetic val$listener:Lcom/nativex/monetization/manager/ImageDownloadManager$OnDownloadComplete;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/manager/ImageDownloadManager;Ljava/lang/String;Lcom/nativex/monetization/manager/ImageDownloadManager$OnDownloadComplete;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/nativex/monetization/manager/ImageDownloadManager$1;->this$0:Lcom/nativex/monetization/manager/ImageDownloadManager;

    iput-object p2, p0, Lcom/nativex/monetization/manager/ImageDownloadManager$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/nativex/monetization/manager/ImageDownloadManager$1;->val$listener:Lcom/nativex/monetization/manager/ImageDownloadManager$OnDownloadComplete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(ZLcom/nativex/common/Response;)V
    .locals 11
    .param p1, "succeded"    # Z
    .param p2, "response"    # Lcom/nativex/common/Response;

    .prologue
    .line 140
    const/4 v5, 0x0

    .line 141
    .local v5, "imageSetSuccessful":Z
    if-eqz p1, :cond_0

    .line 142
    :try_start_0
    iget-object v8, p0, Lcom/nativex/monetization/manager/ImageDownloadManager$1;->this$0:Lcom/nativex/monetization/manager/ImageDownloadManager;

    # getter for: Lcom/nativex/monetization/manager/ImageDownloadManager;->storage:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/nativex/monetization/manager/ImageDownloadManager;->access$000(Lcom/nativex/monetization/manager/ImageDownloadManager;)Ljava/util/HashMap;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 143
    iget-object v8, p0, Lcom/nativex/monetization/manager/ImageDownloadManager$1;->this$0:Lcom/nativex/monetization/manager/ImageDownloadManager;

    # getter for: Lcom/nativex/monetization/manager/ImageDownloadManager;->storage:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/nativex/monetization/manager/ImageDownloadManager;->access$000(Lcom/nativex/monetization/manager/ImageDownloadManager;)Ljava/util/HashMap;

    move-result-object v8

    iget-object v9, p0, Lcom/nativex/monetization/manager/ImageDownloadManager$1;->val$url:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 144
    .local v6, "imageViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ImageView;>;"
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 145
    move-object v0, p2

    check-cast v0, Lcom/nativex/common/GetImageResponse;

    move-object v4, v0

    .line 146
    .local v4, "imageResponse":Lcom/nativex/common/GetImageResponse;
    invoke-virtual {v4}, Lcom/nativex/common/GetImageResponse;->getBitmapResponse()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 147
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/nativex/monetization/manager/ImageCacheManager;->getInstance()Lcom/nativex/monetization/interfaces/IImageCacheManager;

    move-result-object v8

    iget-object v9, p0, Lcom/nativex/monetization/manager/ImageDownloadManager$1;->val$url:Ljava/lang/String;

    invoke-interface {v8, v9, v1}, Lcom/nativex/monetization/interfaces/IImageCacheManager;->add(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 148
    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 150
    .local v7, "view":Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/nativex/monetization/manager/ImageDownloadManager$1;->this$0:Lcom/nativex/monetization/manager/ImageDownloadManager;

    iget-object v9, p0, Lcom/nativex/monetization/manager/ImageDownloadManager$1;->val$listener:Lcom/nativex/monetization/manager/ImageDownloadManager$OnDownloadComplete;

    # invokes: Lcom/nativex/monetization/manager/ImageDownloadManager;->setImageViewBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/nativex/monetization/manager/ImageDownloadManager$OnDownloadComplete;)V
    invoke-static {v8, v7, v1, v9}, Lcom/nativex/monetization/manager/ImageDownloadManager;->access$100(Lcom/nativex/monetization/manager/ImageDownloadManager;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/nativex/monetization/manager/ImageDownloadManager$OnDownloadComplete;)V

    .line 151
    const/4 v5, 0x1

    goto :goto_0

    .line 157
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "imageResponse":Lcom/nativex/common/GetImageResponse;
    .end local v6    # "imageViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ImageView;>;"
    .end local v7    # "view":Landroid/widget/ImageView;
    :cond_0
    iget-object v8, p0, Lcom/nativex/monetization/manager/ImageDownloadManager$1;->this$0:Lcom/nativex/monetization/manager/ImageDownloadManager;

    # getter for: Lcom/nativex/monetization/manager/ImageDownloadManager;->storage:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/nativex/monetization/manager/ImageDownloadManager;->access$000(Lcom/nativex/monetization/manager/ImageDownloadManager;)Ljava/util/HashMap;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 158
    iget-object v8, p0, Lcom/nativex/monetization/manager/ImageDownloadManager$1;->this$0:Lcom/nativex/monetization/manager/ImageDownloadManager;

    # getter for: Lcom/nativex/monetization/manager/ImageDownloadManager;->storage:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/nativex/monetization/manager/ImageDownloadManager;->access$000(Lcom/nativex/monetization/manager/ImageDownloadManager;)Ljava/util/HashMap;

    move-result-object v8

    iget-object v9, p0, Lcom/nativex/monetization/manager/ImageDownloadManager$1;->val$url:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_1
    if-nez v5, :cond_2

    .line 161
    iget-object v8, p0, Lcom/nativex/monetization/manager/ImageDownloadManager$1;->val$listener:Lcom/nativex/monetization/manager/ImageDownloadManager$OnDownloadComplete;

    if-eqz v8, :cond_2

    .line 162
    iget-object v8, p0, Lcom/nativex/monetization/manager/ImageDownloadManager$1;->val$listener:Lcom/nativex/monetization/manager/ImageDownloadManager$OnDownloadComplete;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/nativex/monetization/manager/ImageDownloadManager$OnDownloadComplete;->downloadComplete(Landroid/view/View;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :cond_2
    :goto_1
    return-void

    .line 165
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 166
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "ImageDownloadManager: Unexpected exception caught in downloadBitmap() requestCompleted()"

    invoke-static {v8}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
