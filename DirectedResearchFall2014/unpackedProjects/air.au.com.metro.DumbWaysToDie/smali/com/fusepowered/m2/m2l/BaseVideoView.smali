.class abstract Lcom/fusepowered/m2/m2l/BaseVideoView;
.super Landroid/widget/VideoView;
.source "BaseVideoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 48
    return-void
.end method


# virtual methods
.method onPause()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method onResume()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method
