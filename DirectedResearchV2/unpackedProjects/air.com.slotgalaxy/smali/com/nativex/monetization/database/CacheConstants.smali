.class public Lcom/nativex/monetization/database/CacheConstants;
.super Ljava/lang/Object;
.source "CacheConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nativex/monetization/database/CacheConstants$CACHE_ERROR;,
        Lcom/nativex/monetization/database/CacheConstants$CACHE;,
        Lcom/nativex/monetization/database/CacheConstants$DOWNLOADED_FILES;,
        Lcom/nativex/monetization/database/CacheConstants$CACHE_UTILS;,
        Lcom/nativex/monetization/database/CacheConstants$DOWNLOAD_IDS;,
        Lcom/nativex/monetization/database/CacheConstants$FILE_STATUS;
    }
.end annotation


# static fields
.field public static final CACHE_ERROR_TABLE:Ljava/lang/String; = "cache_error"

.field public static final CACHE_TABLE:Ljava/lang/String; = "cache_files"

.field public static final CACHE_UTIL_TABLE:Ljava/lang/String; = "cache_utils"

.field public static final DOWNLOADED_FILES_TABLE:Ljava/lang/String; = "downloaded_files"

.field public static final DOWNLOAD_MAP_TABLE:Ljava/lang/String; = "download_map"

.field public static final FILE_STATUS_TABLE:Ljava/lang/String; = "file_status"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method
