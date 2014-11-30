.class public Lcom/dolphin/browser/util/az;
.super Ljava/lang/Object;
.source "GpuInfo.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/dolphin/browser/util/az;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    const-string v0, "/system/lib/egl/egl.cfg"

    invoke-static {v0}, Lcom/dolphin/browser/util/Device;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/util/az;->a:Ljava/lang/String;

    .line 17
    :cond_0
    sget-object v0, Lcom/dolphin/browser/util/az;->a:Ljava/lang/String;

    return-object v0
.end method
