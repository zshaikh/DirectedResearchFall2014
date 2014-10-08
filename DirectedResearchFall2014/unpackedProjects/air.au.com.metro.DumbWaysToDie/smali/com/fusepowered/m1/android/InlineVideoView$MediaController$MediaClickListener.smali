.class final Lcom/fusepowered/m1/android/InlineVideoView$MediaController$MediaClickListener;
.super Ljava/lang/Object;
.source "InlineVideoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/InlineVideoView$MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MediaClickListener"
.end annotation


# instance fields
.field private inlineVideoRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/fusepowered/m1/android/InlineVideoView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fusepowered/m1/android/InlineVideoView;)V
    .locals 1
    .param p1, "inlineView"    # Lcom/fusepowered/m1/android/InlineVideoView;

    .prologue
    .line 891
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 892
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/InlineVideoView$MediaController$MediaClickListener;->inlineVideoRef:Ljava/lang/ref/WeakReference;

    .line 893
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 898
    iget-object v1, p0, Lcom/fusepowered/m1/android/InlineVideoView$MediaController$MediaClickListener;->inlineVideoRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/InlineVideoView;

    .line 899
    .local v0, "inlineView":Lcom/fusepowered/m1/android/InlineVideoView;
    if-eqz v0, :cond_0

    .line 901
    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/android/InlineVideoView;->onMediaControllerClick(Landroid/view/View;)V

    .line 903
    :cond_0
    return-void
.end method
