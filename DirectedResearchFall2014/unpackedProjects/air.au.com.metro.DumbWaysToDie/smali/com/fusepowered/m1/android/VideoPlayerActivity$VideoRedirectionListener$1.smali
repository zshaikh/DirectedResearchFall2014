.class Lcom/fusepowered/m1/android/VideoPlayerActivity$VideoRedirectionListener$1;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m1/android/VideoPlayerActivity$VideoRedirectionListener;->isHandlingMMVideo(Landroid/net/Uri;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m1/android/VideoPlayerActivity$VideoRedirectionListener;

.field final synthetic val$activity:Lcom/fusepowered/m1/android/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/fusepowered/m1/android/VideoPlayerActivity$VideoRedirectionListener;Lcom/fusepowered/m1/android/VideoPlayerActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/fusepowered/m1/android/VideoPlayerActivity$VideoRedirectionListener$1;->this$0:Lcom/fusepowered/m1/android/VideoPlayerActivity$VideoRedirectionListener;

    iput-object p2, p0, Lcom/fusepowered/m1/android/VideoPlayerActivity$VideoRedirectionListener$1;->val$activity:Lcom/fusepowered/m1/android/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/fusepowered/m1/android/VideoPlayerActivity$VideoRedirectionListener$1;->val$activity:Lcom/fusepowered/m1/android/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/VideoPlayerActivity;->enableButtons()V

    .line 130
    return-void
.end method
