.class public Lcom/dolphin/browser/push/data/k;
.super Ljava/lang/Object;
.source "PushMessageDataBuilder.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/dolphin/browser/push/data/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/dolphin/browser/push/data/k;->a:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/dolphin/browser/push/data/k;->b:Lcom/dolphin/browser/push/data/h;

    .line 23
    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/push/data/h;)Lcom/dolphin/browser/push/data/k;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/dolphin/browser/push/data/k;->b:Lcom/dolphin/browser/push/data/h;

    .line 37
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/dolphin/browser/push/data/k;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/dolphin/browser/push/data/k;->a:Ljava/lang/String;

    .line 32
    return-object p0
.end method

.method public a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dolphin/browser/push/data/k;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/push/data/k;->b:Lcom/dolphin/browser/push/data/h;

    if-nez v0, :cond_1

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "destId and push data can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 46
    const-string v1, "dst_id"

    iget-object v2, p0, Lcom/dolphin/browser/push/data/k;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v1, "device_id"

    invoke-static {}, Lcom/dolphin/browser/push/t;->a()Lcom/dolphin/browser/push/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/push/t;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v1, "data"

    iget-object v2, p0, Lcom/dolphin/browser/push/data/k;->b:Lcom/dolphin/browser/push/data/h;

    invoke-virtual {v2}, Lcom/dolphin/browser/push/data/h;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v1, "type"

    const-string v2, "pub"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v1, "room"

    const-string v2, "/service/dolphin/tabpush"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-object v0
.end method
