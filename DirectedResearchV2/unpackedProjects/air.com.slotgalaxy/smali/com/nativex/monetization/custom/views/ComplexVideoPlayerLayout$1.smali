.class Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$1;
.super Ljava/lang/Object;
.source "ComplexVideoPlayerLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$1;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 112
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$1;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    # getter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->finished:Z
    invoke-static {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$000(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$1;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    invoke-virtual {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->replay()V

    .line 114
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$1;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    # getter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;
    invoke-static {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$100(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->onPlay()V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$1;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    # getter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->prepared:Z
    invoke-static {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$200(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$1;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    # getter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->paused:Z
    invoke-static {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$300(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$1;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    # getter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;
    invoke-static {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$100(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->onPlay()V

    .line 118
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$1;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    # getter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$400(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 119
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$1;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    # setter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->paused:Z
    invoke-static {v0, v1}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$302(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;Z)Z

    goto :goto_0

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$1;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    # getter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;
    invoke-static {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$100(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->onPause()V

    .line 122
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$1;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    # getter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$400(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 123
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$1;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    # setter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->paused:Z
    invoke-static {v0, v2}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$302(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;Z)Z

    goto :goto_0

    .line 125
    :cond_3
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$1;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    # getter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->starting:Z
    invoke-static {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$500(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$1;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    # getter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->paused:Z
    invoke-static {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$300(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 127
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$1;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    # getter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;
    invoke-static {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$100(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->onPlay()V

    .line 128
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$1;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    # setter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->paused:Z
    invoke-static {v0, v1}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$302(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;Z)Z

    goto :goto_0

    .line 130
    :cond_4
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$1;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    # getter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;
    invoke-static {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$100(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->onPause()V

    .line 131
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$1;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    # setter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->paused:Z
    invoke-static {v0, v2}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$302(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;Z)Z

    goto :goto_0
.end method
