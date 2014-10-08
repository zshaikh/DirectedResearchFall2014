.class Lcom/fusepowered/m1/android/MMLayout$3;
.super Ljava/lang/Object;
.source "MMLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m1/android/MMLayout;->adjustVideo(Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m1/android/MMLayout;

.field final synthetic val$params:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;


# direct methods
.method constructor <init>(Lcom/fusepowered/m1/android/MMLayout;Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;)V
    .locals 0

    .prologue
    .line 559
    iput-object p1, p0, Lcom/fusepowered/m1/android/MMLayout$3;->this$0:Lcom/fusepowered/m1/android/MMLayout;

    iput-object p2, p0, Lcom/fusepowered/m1/android/MMLayout$3;->val$params:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout$3;->this$0:Lcom/fusepowered/m1/android/MMLayout;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoView:Lcom/fusepowered/m1/android/InlineVideoView;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout$3;->this$0:Lcom/fusepowered/m1/android/MMLayout;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoView:Lcom/fusepowered/m1/android/InlineVideoView;

    iget-object v1, p0, Lcom/fusepowered/m1/android/MMLayout$3;->val$params:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    invoke-virtual {v0, v1}, Lcom/fusepowered/m1/android/InlineVideoView;->adjustVideo(Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;)Z

    .line 567
    :cond_0
    return-void
.end method
