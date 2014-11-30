.class public Lcom/stuv/ane/referrer/extensions/ReferrerWrapper;
.super Ljava/lang/Object;
.source "ReferrerWrapper.java"


# static fields
.field private static _baseActivity:Landroid/app/Activity;

.field private static _context:Lcom/adobe/fre/FREContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getReferrer()Ljava/lang/String;
    .locals 8

    .prologue
    .line 40
    :try_start_0
    sget-object v5, Lcom/stuv/ane/referrer/extensions/ReferrerWrapper;->_baseActivity:Landroid/app/Activity;

    const-string v6, "slotgalaxy_referrer"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 42
    .local v2, "in":Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 43
    .local v3, "inputStreamReader":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 45
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    move-object v5, v4

    .line 58
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v4    # "line":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 53
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 55
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "ReferralReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Bad: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string v5, "None"

    goto :goto_0
.end method

.method public static init(Landroid/app/Activity;Lcom/adobe/fre/FREContext;)V
    .locals 0
    .param p0, "baseActivity"    # Landroid/app/Activity;
    .param p1, "context"    # Lcom/adobe/fre/FREContext;

    .prologue
    .line 30
    sput-object p1, Lcom/stuv/ane/referrer/extensions/ReferrerWrapper;->_context:Lcom/adobe/fre/FREContext;

    .line 32
    sput-object p0, Lcom/stuv/ane/referrer/extensions/ReferrerWrapper;->_baseActivity:Landroid/app/Activity;

    .line 34
    return-void
.end method
