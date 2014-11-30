.class public Lcom/mgeek/android/util/i;
.super Ljava/lang/Object;
.source "DeviceManager.java"


# direct methods
.method public static final a()Z
    .locals 2

    .prologue
    .line 7
    new-instance v0, Ljava/io/File;

    const-string v1, "/dbdata"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method
