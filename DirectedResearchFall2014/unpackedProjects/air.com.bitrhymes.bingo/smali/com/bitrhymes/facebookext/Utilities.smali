.class public Lcom/bitrhymes/facebookext/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# static fields
.field public static final EVENT_FB_AUTH:Ljava/lang/String; = "fb_auth"

.field public static final EXTRA_ACCESS_TOKEN:Ljava/lang/String; = "EXTEND_ACCESS_TOKEN_EVENT"

.field public static final FB_ERROR_EVENT:Ljava/lang/String; = "FB_ERROR_EVENT"

.field public static final FB_NETWORK_ERROR_EVENT:Ljava/lang/String; = "FB_NETWORK_ERROR_EVENT"

.field public static final REQUEST_CANCELLED_EVENT:Ljava/lang/String; = "REQUEST_CANCELLED"

.field public static final REQUEST_FAILED_EVENT:Ljava/lang/String; = "REQUEST_FAILED"

.field public static final REQUEST_SENT_EVENT:Ljava/lang/String; = "REQUEST_SENT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "permissionsStr"

    .prologue
    .line 17
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v3, p0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .local v3, tokenizer:Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v4

    new-array v0, v4, [Ljava/lang/String;

    .line 19
    .local v0, arrStrings:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 20
    .local v1, i:I
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_0

    .line 23
    return-object v0

    .line 21
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_0
.end method
