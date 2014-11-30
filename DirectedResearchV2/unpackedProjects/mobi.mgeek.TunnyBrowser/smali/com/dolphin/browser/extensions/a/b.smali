.class public Lcom/dolphin/browser/extensions/a/b;
.super Ljava/lang/Object;
.source "PromotedContent.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/dolphin/browser/extensions/a/b;
    .locals 3

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 32
    :cond_0
    new-instance v0, Lcom/dolphin/browser/extensions/a/b;

    invoke-direct {v0}, Lcom/dolphin/browser/extensions/a/b;-><init>()V

    .line 34
    const-string v1, "last_modified"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/dolphin/browser/extensions/a/b;->b:J

    .line 35
    const-string v1, "items"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/extensions/a/b;->a:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/dolphin/browser/extensions/a/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/dolphin/browser/extensions/a/b;->b:J

    return-wide v0
.end method
