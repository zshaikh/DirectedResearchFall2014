.class public Lcom/dolphin/browser/promoted/h;
.super Ljava/lang/Object;
.source "PromotedData.java"


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/dolphin/browser/promoted/h;
    .locals 3

    .prologue
    .line 44
    if-nez p0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 56
    :goto_0
    return-object v0

    .line 48
    :cond_0
    new-instance v0, Lcom/dolphin/browser/promoted/h;

    invoke-direct {v0}, Lcom/dolphin/browser/promoted/h;-><init>()V

    .line 50
    const-string v1, "last_modified"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/dolphin/browser/promoted/h;->a:J

    .line 51
    const-string v1, "apps"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/promoted/h;->b:Ljava/lang/String;

    .line 52
    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/promoted/h;->c:Ljava/lang/String;

    .line 53
    const-string v1, "message"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/promoted/h;->d:Ljava/lang/String;

    .line 54
    const-string v1, "button_text"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/promoted/h;->e:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/dolphin/browser/promoted/h;->a:J

    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dolphin/browser/promoted/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dolphin/browser/promoted/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dolphin/browser/promoted/h;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dolphin/browser/promoted/h;->e:Ljava/lang/String;

    return-object v0
.end method
