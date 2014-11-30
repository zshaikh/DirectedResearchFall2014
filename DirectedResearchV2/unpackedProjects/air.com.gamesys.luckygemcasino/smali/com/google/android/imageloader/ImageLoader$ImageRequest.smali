.class Lcom/google/android/imageloader/ImageLoader$ImageRequest;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/imageloader/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageRequest"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mCallback:Lcom/google/android/imageloader/ImageLoader$ImageCallback;

.field private mError:Lcom/google/android/imageloader/ImageLoader$ImageError;

.field private final mLoadBitmap:Z

.field private final mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/imageloader/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/google/android/imageloader/ImageLoader;Landroid/widget/BaseAdapter;Ljava/lang/String;)V
    .locals 2
    .param p2, "adapter"    # Landroid/widget/BaseAdapter;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 700
    new-instance v0, Lcom/google/android/imageloader/ImageLoader$BaseAdapterCallback;

    invoke-direct {v0, p2}, Lcom/google/android/imageloader/ImageLoader$BaseAdapterCallback;-><init>(Landroid/widget/BaseAdapter;)V

    const/4 v1, 0x1

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/google/android/imageloader/ImageLoader$ImageRequest;-><init>(Lcom/google/android/imageloader/ImageLoader;Ljava/lang/String;Lcom/google/android/imageloader/ImageLoader$ImageCallback;Z)V

    .line 701
    return-void
.end method

.method public constructor <init>(Lcom/google/android/imageloader/ImageLoader;Landroid/widget/BaseExpandableListAdapter;Ljava/lang/String;)V
    .locals 2
    .param p2, "adapter"    # Landroid/widget/BaseExpandableListAdapter;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 707
    new-instance v0, Lcom/google/android/imageloader/ImageLoader$BaseExpandableListAdapterCallback;

    invoke-direct {v0, p2}, Lcom/google/android/imageloader/ImageLoader$BaseExpandableListAdapterCallback;-><init>(Landroid/widget/BaseExpandableListAdapter;)V

    const/4 v1, 0x1

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/google/android/imageloader/ImageLoader$ImageRequest;-><init>(Lcom/google/android/imageloader/ImageLoader;Ljava/lang/String;Lcom/google/android/imageloader/ImageLoader$ImageCallback;Z)V

    .line 708
    return-void
.end method

.method public constructor <init>(Lcom/google/android/imageloader/ImageLoader;Landroid/widget/ImageView;Ljava/lang/String;Lcom/google/android/imageloader/ImageLoader$Callback;)V
    .locals 2
    .param p2, "view"    # Landroid/widget/ImageView;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/google/android/imageloader/ImageLoader$Callback;

    .prologue
    .line 714
    new-instance v0, Lcom/google/android/imageloader/ImageLoader$ImageViewCallback;

    invoke-direct {v0, p1, p2, p4}, Lcom/google/android/imageloader/ImageLoader$ImageViewCallback;-><init>(Lcom/google/android/imageloader/ImageLoader;Landroid/widget/ImageView;Lcom/google/android/imageloader/ImageLoader$Callback;)V

    const/4 v1, 0x1

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/google/android/imageloader/ImageLoader$ImageRequest;-><init>(Lcom/google/android/imageloader/ImageLoader;Ljava/lang/String;Lcom/google/android/imageloader/ImageLoader$ImageCallback;Z)V

    .line 715
    return-void
.end method

.method private constructor <init>(Lcom/google/android/imageloader/ImageLoader;Ljava/lang/String;Lcom/google/android/imageloader/ImageLoader$ImageCallback;Z)V
    .locals 0
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/google/android/imageloader/ImageLoader$ImageCallback;
    .param p4, "loadBitmap"    # Z

    .prologue
    .line 690
    iput-object p1, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->this$0:Lcom/google/android/imageloader/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 691
    iput-object p2, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mUrl:Ljava/lang/String;

    .line 692
    iput-object p3, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mCallback:Lcom/google/android/imageloader/ImageLoader$ImageCallback;

    .line 693
    iput-boolean p4, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mLoadBitmap:Z

    .line 694
    return-void
.end method

.method public constructor <init>(Lcom/google/android/imageloader/ImageLoader;Ljava/lang/String;Z)V
    .locals 1
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "loadBitmap"    # Z

    .prologue
    .line 721
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/imageloader/ImageLoader$ImageRequest;-><init>(Lcom/google/android/imageloader/ImageLoader;Ljava/lang/String;Lcom/google/android/imageloader/ImageLoader$ImageCallback;Z)V

    .line 722
    return-void
.end method

.method private loadImage(Ljava/net/URL;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 725
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 726
    .local v0, "connection":Ljava/net/URLConnection;
    iget-object v1, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->this$0:Lcom/google/android/imageloader/ImageLoader;

    # getter for: Lcom/google/android/imageloader/ImageLoader;->mBitmapContentHandler:Ljava/net/ContentHandler;
    invoke-static {v1}, Lcom/google/android/imageloader/ImageLoader;->access$0(Lcom/google/android/imageloader/ImageLoader;)Ljava/net/ContentHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    return-object v1
.end method


# virtual methods
.method public execute()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 736
    :try_start_0
    iget-object v7, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mCallback:Lcom/google/android/imageloader/ImageLoader$ImageCallback;

    if-eqz v7, :cond_0

    .line 737
    iget-object v7, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mCallback:Lcom/google/android/imageloader/ImageLoader$ImageCallback;

    invoke-interface {v7}, Lcom/google/android/imageloader/ImageLoader$ImageCallback;->unwanted()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 789
    :goto_0
    return v5

    .line 742
    :cond_0
    iget-object v7, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->this$0:Lcom/google/android/imageloader/ImageLoader;

    iget-object v8, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mUrl:Ljava/lang/String;

    # invokes: Lcom/google/android/imageloader/ImageLoader;->getError(Ljava/lang/String;)Lcom/google/android/imageloader/ImageLoader$ImageError;
    invoke-static {v7, v8}, Lcom/google/android/imageloader/ImageLoader;->access$1(Lcom/google/android/imageloader/ImageLoader;Ljava/lang/String;)Lcom/google/android/imageloader/ImageLoader$ImageError;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mError:Lcom/google/android/imageloader/ImageLoader$ImageError;

    .line 743
    iget-object v7, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mError:Lcom/google/android/imageloader/ImageLoader$ImageError;

    if-eqz v7, :cond_1

    move v5, v6

    .line 744
    goto :goto_0

    .line 748
    :cond_1
    iget-object v7, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->this$0:Lcom/google/android/imageloader/ImageLoader;

    iget-object v8, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mUrl:Ljava/lang/String;

    # invokes: Lcom/google/android/imageloader/ImageLoader;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {v7, v8}, Lcom/google/android/imageloader/ImageLoader;->access$2(Lcom/google/android/imageloader/ImageLoader;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mBitmap:Landroid/graphics/Bitmap;

    .line 749
    iget-object v7, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_2

    move v5, v6

    .line 751
    goto :goto_0

    .line 754
    :cond_2
    iget-object v7, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mUrl:Ljava/lang/String;

    # invokes: Lcom/google/android/imageloader/ImageLoader;->getProtocol(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7}, Lcom/google/android/imageloader/ImageLoader;->access$3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 755
    .local v2, "protocol":Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->this$0:Lcom/google/android/imageloader/ImageLoader;

    # invokes: Lcom/google/android/imageloader/ImageLoader;->getURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
    invoke-static {v7, v2}, Lcom/google/android/imageloader/ImageLoader;->access$4(Lcom/google/android/imageloader/ImageLoader;Ljava/lang/String;)Ljava/net/URLStreamHandler;

    move-result-object v3

    .line 756
    .local v3, "streamHandler":Ljava/net/URLStreamHandler;
    new-instance v4, Ljava/net/URL;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mUrl:Ljava/lang/String;

    invoke-direct {v4, v7, v8, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    .line 758
    .local v4, "url":Ljava/net/URL;
    iget-boolean v7, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mLoadBitmap:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v7, :cond_4

    .line 760
    :try_start_1
    invoke-direct {p0, v4}, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->loadImage(Ljava/net/URL;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3

    .line 768
    :goto_1
    :try_start_2
    iget-object v5, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_3

    .line 769
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v7, "ContentHandler returned null"

    invoke-direct {v5, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_3

    .line 781
    .end local v2    # "protocol":Ljava/lang/String;
    .end local v3    # "streamHandler":Ljava/net/URLStreamHandler;
    .end local v4    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 782
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Lcom/google/android/imageloader/ImageLoader$ImageError;

    invoke-direct {v5, v1}, Lcom/google/android/imageloader/ImageLoader$ImageError;-><init>(Ljava/lang/Throwable;)V

    iput-object v5, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mError:Lcom/google/android/imageloader/ImageLoader$ImageError;

    move v5, v6

    .line 783
    goto :goto_0

    .line 761
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "protocol":Ljava/lang/String;
    .restart local v3    # "streamHandler":Ljava/net/URLStreamHandler;
    .restart local v4    # "url":Ljava/net/URL;
    :catch_1
    move-exception v1

    .line 765
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_3
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 766
    invoke-direct {p0, v4}, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->loadImage(Ljava/net/URL;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 784
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    .end local v2    # "protocol":Ljava/lang/String;
    .end local v3    # "streamHandler":Ljava/net/URLStreamHandler;
    .end local v4    # "url":Ljava/net/URL;
    :catch_2
    move-exception v1

    .line 785
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v5, Lcom/google/android/imageloader/ImageLoader$ImageError;

    invoke-direct {v5, v1}, Lcom/google/android/imageloader/ImageLoader$ImageError;-><init>(Ljava/lang/Throwable;)V

    iput-object v5, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mError:Lcom/google/android/imageloader/ImageLoader$ImageError;

    move v5, v6

    .line 786
    goto :goto_0

    .end local v1    # "e":Ljava/lang/RuntimeException;
    .restart local v2    # "protocol":Ljava/lang/String;
    .restart local v3    # "streamHandler":Ljava/net/URLStreamHandler;
    .restart local v4    # "url":Ljava/net/URL;
    :cond_3
    move v5, v6

    .line 771
    goto :goto_0

    .line 773
    :cond_4
    :try_start_4
    iget-object v7, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->this$0:Lcom/google/android/imageloader/ImageLoader;

    # getter for: Lcom/google/android/imageloader/ImageLoader;->mPrefetchContentHandler:Ljava/net/ContentHandler;
    invoke-static {v7}, Lcom/google/android/imageloader/ImageLoader;->access$5(Lcom/google/android/imageloader/ImageLoader;)Ljava/net/ContentHandler;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 775
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 776
    .local v0, "connection":Ljava/net/URLConnection;
    iget-object v7, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->this$0:Lcom/google/android/imageloader/ImageLoader;

    # getter for: Lcom/google/android/imageloader/ImageLoader;->mPrefetchContentHandler:Ljava/net/ContentHandler;
    invoke-static {v7}, Lcom/google/android/imageloader/ImageLoader;->access$5(Lcom/google/android/imageloader/ImageLoader;)Ljava/net/ContentHandler;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;)Ljava/lang/Object;

    .line 778
    .end local v0    # "connection":Ljava/net/URLConnection;
    :cond_5
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 787
    .end local v2    # "protocol":Ljava/lang/String;
    .end local v3    # "streamHandler":Ljava/net/URLStreamHandler;
    .end local v4    # "url":Ljava/net/URL;
    :catch_3
    move-exception v1

    .line 788
    .local v1, "e":Ljava/lang/Error;
    new-instance v5, Lcom/google/android/imageloader/ImageLoader$ImageError;

    invoke-direct {v5, v1}, Lcom/google/android/imageloader/ImageLoader$ImageError;-><init>(Ljava/lang/Throwable;)V

    iput-object v5, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mError:Lcom/google/android/imageloader/ImageLoader$ImageError;

    move v5, v6

    .line 789
    goto/16 :goto_0
.end method

.method public publishResult()V
    .locals 4

    .prologue
    .line 794
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 795
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->this$0:Lcom/google/android/imageloader/ImageLoader;

    iget-object v1, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mBitmap:Landroid/graphics/Bitmap;

    # invokes: Lcom/google/android/imageloader/ImageLoader;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/imageloader/ImageLoader;->access$6(Lcom/google/android/imageloader/ImageLoader;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 800
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mCallback:Lcom/google/android/imageloader/ImageLoader$ImageCallback;

    if-eqz v0, :cond_1

    .line 801
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mCallback:Lcom/google/android/imageloader/ImageLoader$ImageCallback;

    iget-object v1, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mError:Lcom/google/android/imageloader/ImageLoader$ImageError;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/imageloader/ImageLoader$ImageCallback;->send(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/imageloader/ImageLoader$ImageError;)V

    .line 803
    :cond_1
    return-void

    .line 796
    :cond_2
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mError:Lcom/google/android/imageloader/ImageLoader$ImageError;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->this$0:Lcom/google/android/imageloader/ImageLoader;

    iget-object v1, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mUrl:Ljava/lang/String;

    # invokes: Lcom/google/android/imageloader/ImageLoader;->hasError(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/google/android/imageloader/ImageLoader;->access$7(Lcom/google/android/imageloader/ImageLoader;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 797
    const-string v0, "ImageLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to load "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mError:Lcom/google/android/imageloader/ImageLoader$ImageError;

    invoke-virtual {v2}, Lcom/google/android/imageloader/ImageLoader$ImageError;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 798
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->this$0:Lcom/google/android/imageloader/ImageLoader;

    iget-object v1, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mError:Lcom/google/android/imageloader/ImageLoader$ImageError;

    # invokes: Lcom/google/android/imageloader/ImageLoader;->putError(Ljava/lang/String;Lcom/google/android/imageloader/ImageLoader$ImageError;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/imageloader/ImageLoader;->access$8(Lcom/google/android/imageloader/ImageLoader;Ljava/lang/String;Lcom/google/android/imageloader/ImageLoader$ImageError;)V

    goto :goto_0
.end method
