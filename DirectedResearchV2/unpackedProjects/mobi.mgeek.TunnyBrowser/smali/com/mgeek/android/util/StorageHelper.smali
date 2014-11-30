.class public final Lcom/mgeek/android/util/StorageHelper;
.super Ljava/lang/Object;
.source "StorageHelper.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDK;
.end annotation

.annotation build Lcom/dolphin/browser/annotation/KeepPublic;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllStoreRootPathFiles()[Ljava/io/File;
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/dolphin/browser/util/StorageHelper;->a()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailedStorageSize()J
    .locals 2

    .prologue
    .line 48
    invoke-static {}, Lcom/dolphin/browser/util/StorageHelper;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getExternalStorageDirectory()Ljava/io/File;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 18
    invoke-static {}, Lcom/dolphin/browser/util/StorageHelper;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalStorageState()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 26
    invoke-static {}, Lcom/dolphin/browser/util/StorageHelper;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileSize(Ljava/io/File;)J
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 31
    invoke-static {p0}, Lcom/dolphin/browser/util/StorageHelper;->getFileSize(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTotalStorageSize()J
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Lcom/dolphin/browser/util/StorageHelper;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public static isDirSizeLargerThan(Ljava/io/File;J)Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 36
    invoke-static {p0, p1, p2}, Lcom/dolphin/browser/util/StorageHelper;->isDirSizeLargerThan(Ljava/io/File;J)Z

    move-result v0

    return v0
.end method

.method public static isSDCardAvailable()Z
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/dolphin/browser/util/StorageHelper;->b()Z

    move-result v0

    return v0
.end method
