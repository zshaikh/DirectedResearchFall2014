.class Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$6$1;
.super Ljava/lang/Object;
.source "ComplexVideoPlayerLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$6;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$6;

.field final synthetic val$mPlayer:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$6;Landroid/media/MediaPlayer;)V
    .locals 0

    .prologue
    .line 805
    iput-object p1, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$6$1;->this$1:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$6;

    iput-object p2, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$6$1;->val$mPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 810
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$6$1;->this$1:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$6;

    iget-object v0, v0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$6;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    # getter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->errorDialog:Lcom/nativex/monetization/dialogs/custom/MessageDialog;
    invoke-static {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$2300(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)Lcom/nativex/monetization/dialogs/custom/MessageDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->dismiss()V

    .line 811
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$6$1;->this$1:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$6;

    iget-object v0, v0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$6;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    # getter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$2400(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$6$1;->val$mPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 812
    return-void
.end method
