.class public Lcom/dolphin/browser/push/b/m;
.super Lcom/dolphin/browser/push/b/k;
.source "DeleteSearchEngineMessageExcutor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/dolphin/browser/push/b/k;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 15
    const-string v1, "unique_name"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16
    const-string v2, "is_force"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 17
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/search/a/c;->a()Lcom/dolphin/browser/search/a/c;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/dolphin/browser/search/a/c;->a(Ljava/lang/String;Z)V

    .line 18
    return-void
.end method
