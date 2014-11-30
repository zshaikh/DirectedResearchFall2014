.class final Lcom/google/android/imageloader/ImageLoader$BaseExpandableListAdapterCallback;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/google/android/imageloader/ImageLoader$ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/imageloader/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BaseExpandableListAdapterCallback"
.end annotation


# instance fields
.field private final mAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/BaseExpandableListAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/BaseExpandableListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/BaseExpandableListAdapter;

    .prologue
    .line 901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 902
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/imageloader/ImageLoader$BaseExpandableListAdapterCallback;->mAdapter:Ljava/lang/ref/WeakReference;

    .line 903
    return-void
.end method


# virtual methods
.method public send(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/imageloader/ImageLoader$ImageError;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "error"    # Lcom/google/android/imageloader/ImageLoader$ImageError;

    .prologue
    .line 914
    iget-object v1, p0, Lcom/google/android/imageloader/ImageLoader$BaseExpandableListAdapterCallback;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseExpandableListAdapter;

    .line 915
    .local v0, "adapter":Landroid/widget/BaseExpandableListAdapter;
    if-nez v0, :cond_1

    .line 928
    :cond_0
    :goto_0
    return-void

    .line 919
    :cond_1
    invoke-virtual {v0}, Landroid/widget/BaseExpandableListAdapter;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 920
    invoke-virtual {v0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public unwanted()Z
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader$BaseExpandableListAdapterCallback;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
