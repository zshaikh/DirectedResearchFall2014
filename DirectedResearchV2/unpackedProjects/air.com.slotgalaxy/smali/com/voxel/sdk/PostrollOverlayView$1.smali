.class Lcom/voxel/sdk/PostrollOverlayView$1;
.super Ljava/lang/Object;
.source "PostrollOverlayView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/sdk/PostrollOverlayView;->createSubviews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/sdk/PostrollOverlayView;


# direct methods
.method constructor <init>(Lcom/voxel/sdk/PostrollOverlayView;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/voxel/sdk/PostrollOverlayView$1;->this$0:Lcom/voxel/sdk/PostrollOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/voxel/sdk/PostrollOverlayView$1;->this$0:Lcom/voxel/sdk/PostrollOverlayView;

    invoke-virtual {v0}, Lcom/voxel/sdk/PostrollOverlayView;->dispatchCompletion()V

    .line 209
    return-void
.end method
