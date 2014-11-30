.class Lcom/voxel/sdk/PostrollOverlayView$3;
.super Ljava/lang/Object;
.source "PostrollOverlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/sdk/PostrollOverlayView;->startTimer()V
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
    .line 227
    iput-object p1, p0, Lcom/voxel/sdk/PostrollOverlayView$3;->this$0:Lcom/voxel/sdk/PostrollOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/voxel/sdk/PostrollOverlayView$3;->this$0:Lcom/voxel/sdk/PostrollOverlayView;

    invoke-virtual {v0}, Lcom/voxel/sdk/PostrollOverlayView;->dispatchCompletion()V

    .line 231
    return-void
.end method
