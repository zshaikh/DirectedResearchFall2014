.class public Lcom/dolphin/browser/push/b/d;
.super Lcom/dolphin/browser/push/b/k;
.source "AddSearchEngineMessageExcutor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/dolphin/browser/push/b/k;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-static {p1}, Lcom/dolphin/browser/search/b/b;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/search/b/b;

    move-result-object v1

    .line 17
    const-string v2, "is_force"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 18
    :cond_0
    const-string v2, "default_engine"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-virtual {v1}, Lcom/dolphin/browser/search/b/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 20
    invoke-static {}, Lcom/dolphin/browser/search/a/c;->a()Lcom/dolphin/browser/search/a/c;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Lcom/dolphin/browser/search/a/c;->a(Lcom/dolphin/browser/search/b/b;ZZ)V

    .line 21
    return-void
.end method
