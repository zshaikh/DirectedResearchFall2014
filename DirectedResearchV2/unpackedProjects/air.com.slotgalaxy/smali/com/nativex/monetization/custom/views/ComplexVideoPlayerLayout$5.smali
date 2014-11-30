.class Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$5;
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
    .line 765
    iput-object p1, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$5;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 770
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$5;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    const-wide/16 v1, 0xbb8

    # invokes: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->showControls(J)V
    invoke-static {v0, v1, v2}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$2200(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;J)V

    .line 771
    return-void
.end method
