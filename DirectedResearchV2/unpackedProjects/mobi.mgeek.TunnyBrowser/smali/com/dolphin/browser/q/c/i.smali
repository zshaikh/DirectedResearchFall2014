.class Lcom/dolphin/browser/q/c/i;
.super Lcom/dolphin/browser/util/f;
.source "FacebookManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/c/q;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/graphics/Bitmap;

.field final synthetic d:Lcom/dolphin/browser/q/c/b;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/c/b;Lcom/dolphin/browser/q/c/q;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 600
    iput-object p1, p0, Lcom/dolphin/browser/q/c/i;->d:Lcom/dolphin/browser/q/c/b;

    iput-object p2, p0, Lcom/dolphin/browser/q/c/i;->a:Lcom/dolphin/browser/q/c/q;

    iput-object p3, p0, Lcom/dolphin/browser/q/c/i;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/dolphin/browser/q/c/i;->c:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 600
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/q/c/i;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 609
    iget-object v0, p0, Lcom/dolphin/browser/q/c/i;->d:Lcom/dolphin/browser/q/c/b;

    iget-object v1, p0, Lcom/dolphin/browser/q/c/i;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/dolphin/browser/q/c/i;->c:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/q/c/b;->a(Lcom/dolphin/browser/q/c/b;Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/dolphin/browser/q/c/i;->a:Lcom/dolphin/browser/q/c/q;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/dolphin/browser/q/c/i;->a:Lcom/dolphin/browser/q/c/q;

    invoke-interface {v0}, Lcom/dolphin/browser/q/c/q;->a()V

    .line 606
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 600
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/q/c/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 613
    if-nez p1, :cond_1

    .line 614
    iget-object v0, p0, Lcom/dolphin/browser/q/c/i;->a:Lcom/dolphin/browser/q/c/q;

    invoke-interface {v0}, Lcom/dolphin/browser/q/c/q;->c()V

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/q/c/i;->a:Lcom/dolphin/browser/q/c/q;

    if-eqz v0, :cond_0

    .line 620
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 621
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 622
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 623
    iget-object v0, p0, Lcom/dolphin/browser/q/c/i;->a:Lcom/dolphin/browser/q/c/q;

    invoke-interface {v0}, Lcom/dolphin/browser/q/c/q;->b()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 627
    :catch_0
    move-exception v0

    .line 628
    iget-object v1, p0, Lcom/dolphin/browser/q/c/i;->a:Lcom/dolphin/browser/q/c/q;

    invoke-interface {v1}, Lcom/dolphin/browser/q/c/q;->c()V

    .line 629
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 625
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/dolphin/browser/q/c/i;->a:Lcom/dolphin/browser/q/c/q;

    invoke-interface {v0}, Lcom/dolphin/browser/q/c/q;->c()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
