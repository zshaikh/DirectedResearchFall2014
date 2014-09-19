.class public abstract Lcom/fusepowered/activities/FuseApiBrowser;
.super Landroid/app/Activity;
.source "FuseApiBrowser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/activities/FuseApiBrowser$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FuseApiBrowser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public handleOnExit()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 106
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/fusepowered/fuseapi/FuseAPI;->setFuseChildActivityOnDisplay(Z)V

    .line 107
    return-void
.end method
