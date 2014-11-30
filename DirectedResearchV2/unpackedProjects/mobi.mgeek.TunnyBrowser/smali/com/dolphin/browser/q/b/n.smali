.class public final Lcom/dolphin/browser/q/b/n;
.super Ljava/lang/Object;
.source "EvernoteApiCaller.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Lcom/c/b/c/l;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 508
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 510
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 511
    iget-object v0, p0, Lcom/dolphin/browser/q/b/n;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 512
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/dolphin/browser/q/b/n;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 513
    iget-object v3, p0, Lcom/dolphin/browser/q/b/n;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 512
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 517
    :cond_0
    const-string v0, "tagNameList"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 519
    iget-object v0, p0, Lcom/dolphin/browser/q/b/n;->f:Lcom/c/b/c/l;

    if-eqz v0, :cond_1

    .line 520
    const-string v2, "notebookGuid"

    iget-object v0, p0, Lcom/dolphin/browser/q/b/n;->f:Lcom/c/b/c/l;

    invoke-virtual {v0}, Lcom/c/b/c/l;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dolphin/browser/q/b/n;->f:Lcom/c/b/c/l;

    invoke-virtual {v0}, Lcom/c/b/c/l;->a()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 521
    const-string v0, "notebook"

    iget-object v2, p0, Lcom/dolphin/browser/q/b/n;->f:Lcom/c/b/c/l;

    invoke-virtual {v2}, Lcom/c/b/c/l;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 524
    :cond_1
    const-string v0, "createTags"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 526
    return-object v1

    .line 520
    :cond_2
    const-string v0, ""

    goto :goto_1
.end method
