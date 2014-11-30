.class Lcom/dolphin/browser/voice/command/n;
.super Lcom/dolphin/browser/util/f;
.source "VoiceActionManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/dolphin/browser/voice/command/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/voice/command/j;

.field private b:Landroid/content/Context;

.field private c:Lcom/dolphin/browser/voice/command/l;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/voice/command/j;Landroid/content/Context;Lcom/dolphin/browser/voice/command/l;)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Lcom/dolphin/browser/voice/command/n;->a:Lcom/dolphin/browser/voice/command/j;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    .line 436
    iput-object p2, p0, Lcom/dolphin/browser/voice/command/n;->b:Landroid/content/Context;

    .line 437
    iput-object p3, p0, Lcom/dolphin/browser/voice/command/n;->c:Lcom/dolphin/browser/voice/command/l;

    .line 438
    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 430
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/voice/command/n;->a([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/voice/command/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 442
    invoke-static {}, Lcom/dolphin/browser/voice/command/c/a;->a()Lcom/dolphin/browser/voice/command/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/voice/command/c/a;->c()Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    .line 443
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 445
    :try_start_0
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 446
    invoke-static {v0}, Lcom/dolphin/browser/voice/command/c;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    .line 447
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 448
    iget-object v2, p0, Lcom/dolphin/browser/voice/command/n;->a:Lcom/dolphin/browser/voice/command/j;

    iget-object v3, p0, Lcom/dolphin/browser/voice/command/n;->b:Landroid/content/Context;

    invoke-static {v2, v3, v0}, Lcom/dolphin/browser/voice/command/j;->a(Lcom/dolphin/browser/voice/command/j;Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-object v0, v1

    .line 455
    :goto_0
    return-object v0

    .line 451
    :catch_0
    move-exception v0

    .line 452
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 455
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 430
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/voice/command/n;->a(Ljava/util/List;)V

    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/voice/command/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 460
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/voice/command/n;->c:Lcom/dolphin/browser/voice/command/l;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/n;->c:Lcom/dolphin/browser/voice/command/l;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/voice/command/l;->a(Ljava/util/List;)V

    .line 463
    :cond_0
    return-void
.end method
