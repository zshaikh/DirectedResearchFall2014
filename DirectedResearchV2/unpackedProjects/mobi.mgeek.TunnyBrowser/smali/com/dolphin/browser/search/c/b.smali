.class public Lcom/dolphin/browser/search/c/b;
.super Ljava/lang/Object;
.source "SearchPromotion.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/search/c/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/search/c/b;->a:Ljava/util/List;

    .line 22
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/dolphin/browser/search/c/b;
    .locals 5

    .prologue
    .line 26
    new-instance v1, Lcom/dolphin/browser/search/c/b;

    invoke-direct {v1}, Lcom/dolphin/browser/search/c/b;-><init>()V

    .line 27
    const-string v0, "pid_promotions"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 28
    if-nez v2, :cond_0

    move-object v0, v1

    .line 38
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 32
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    invoke-static {v3}, Lcom/dolphin/browser/search/c/a;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/search/c/a;

    move-result-object v3

    .line 35
    iget-object v4, v1, Lcom/dolphin/browser/search/c/b;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 38
    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/search/c/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dolphin/browser/search/c/b;->a:Ljava/util/List;

    return-object v0
.end method
