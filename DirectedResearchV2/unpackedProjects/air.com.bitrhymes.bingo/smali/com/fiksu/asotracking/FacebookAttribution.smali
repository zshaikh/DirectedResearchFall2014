.class public Lcom/fiksu/asotracking/FacebookAttribution;
.super Ljava/lang/Object;
.source "FacebookAttribution.java"


# static fields
.field protected static final ATTRIBUTION_ID_COLUMN_NAME:Ljava/lang/String; = "aid"

.field protected static final ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

.field protected static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const-string v0, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/fiksu/asotracking/FacebookAttribution;->ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "aid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/fiksu/asotracking/FacebookAttribution;->PROJECTION:[Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getAttributionId(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 10
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v9, 0x0

    const-string v0, "FiksuTracking"

    .line 41
    const/4 v6, 0x0

    .line 43
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/fiksu/asotracking/FacebookAttribution;->ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/fiksu/asotracking/FacebookAttribution;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 44
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 71
    :cond_0
    if-eqz v6, :cond_1

    .line 72
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v9

    .line 69
    :cond_2
    :goto_0
    return-object v0

    .line 48
    :cond_3
    :try_start_1
    const-string v0, "aid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 71
    if-eqz v6, :cond_2

    .line 72
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 50
    .local v8, "nullPointerException":Ljava/lang/NullPointerException;
    :try_start_2
    const-string v0, "FiksuTracking"

    const-string v1, "Caught NullPointerException in FacebookAttribution.getAttributionId(). Returning null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    if-eqz v6, :cond_4

    .line 72
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v9

    .line 51
    goto :goto_0

    .line 52
    .end local v8    # "nullPointerException":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    move-object v7, v0

    .line 68
    .local v7, "illegalStateException":Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v0, "FiksuTracking"

    const-string v1, "Caught IllegalStateException in FacebookAttribution.getAttributionId(). Returning null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 71
    if-eqz v6, :cond_5

    .line 72
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v9

    .line 69
    goto :goto_0

    .line 70
    .end local v7    # "illegalStateException":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    .line 71
    if-eqz v6, :cond_6

    .line 72
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 74
    :cond_6
    throw v0
.end method

.method protected static getAttributionId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/fiksu/asotracking/FacebookAttribution;->getAttributionId(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
