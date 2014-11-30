.class public Lcom/appoxee/gcm/PushExtra;
.super Ljava/lang/Object;
.source "PushExtra.java"


# static fields
.field public static extras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/appoxee/gcm/PushExtra;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method public static setExtras(Landroid/os/Bundle;)V
    .locals 0
    .param p0, "newextras"    # Landroid/os/Bundle;

    .prologue
    .line 14
    sput-object p0, Lcom/appoxee/gcm/PushExtra;->extras:Landroid/os/Bundle;

    .line 15
    return-void
.end method
