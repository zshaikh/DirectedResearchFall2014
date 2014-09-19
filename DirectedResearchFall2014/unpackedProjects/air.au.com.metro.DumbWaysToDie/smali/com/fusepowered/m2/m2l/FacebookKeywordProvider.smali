.class public Lcom/fusepowered/m2/m2l/FacebookKeywordProvider;
.super Ljava/lang/Object;
.source "FacebookKeywordProvider.java"


# static fields
.field private static final ID_COLUMN_NAME:Ljava/lang/String; = "aid"

.field private static final ID_PREFIX:Ljava/lang/String; = "FBATTRID:"

.field private static final ID_URL:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/m2/m2l/FacebookKeywordProvider;->ID_URL:Landroid/net/Uri;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKeyword(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    const-string v0, "aid"

    .line 54
    const/4 v7, 0x0

    .line 57
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "aid"

    aput-object v1, v2, v0

    .line 58
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/m2/m2l/FacebookKeywordProvider;->ID_URL:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 60
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_3

    .line 75
    :cond_0
    if-eqz v7, :cond_1

    .line 76
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v9

    .line 73
    .end local v2           #projection:[Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v0

    .line 64
    .restart local v2       #projection:[Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v0, "aid"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 66
    .local v6, attributionId:Ljava/lang/String;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_6

    .line 75
    :cond_4
    if-eqz v7, :cond_5

    .line 76
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v9

    .line 67
    goto :goto_0

    .line 70
    :cond_6
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FBATTRID:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 75
    if-eqz v7, :cond_2

    .line 76
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 71
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #attributionId:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 72
    .local v8, exception:Ljava/lang/Exception;
    :try_start_3
    const-string v0, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unable to retrieve FBATTRID: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    if-eqz v7, :cond_7

    .line 76
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v0, v9

    .line 73
    goto :goto_0

    .line 74
    .end local v8           #exception:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 75
    if-eqz v7, :cond_8

    .line 76
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 78
    :cond_8
    throw v0
.end method
