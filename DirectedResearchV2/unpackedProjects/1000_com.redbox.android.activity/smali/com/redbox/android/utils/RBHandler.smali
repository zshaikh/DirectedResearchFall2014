.class public Lcom/redbox/android/utils/RBHandler;
.super Ljava/lang/Object;
.source "RBHandler.java"


# static fields
.field static handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/redbox/android/utils/RBHandler;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p0, "h"    # Landroid/os/Handler;

    .prologue
    .line 12
    sput-object p0, Lcom/redbox/android/utils/RBHandler;->handler:Landroid/os/Handler;

    .line 13
    return-void
.end method
