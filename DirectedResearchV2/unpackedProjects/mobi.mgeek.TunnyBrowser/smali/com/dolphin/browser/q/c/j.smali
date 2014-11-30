.class Lcom/dolphin/browser/q/c/j;
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

.field final synthetic c:Lcom/dolphin/browser/q/c/b;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/c/b;Lcom/dolphin/browser/q/c/q;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 662
    iput-object p1, p0, Lcom/dolphin/browser/q/c/j;->c:Lcom/dolphin/browser/q/c/b;

    iput-object p2, p0, Lcom/dolphin/browser/q/c/j;->a:Lcom/dolphin/browser/q/c/q;

    iput-object p3, p0, Lcom/dolphin/browser/q/c/j;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 662
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/q/c/j;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/dolphin/browser/q/c/j;->c:Lcom/dolphin/browser/q/c/b;

    iget-object v1, p0, Lcom/dolphin/browser/q/c/j;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/dolphin/browser/q/c/b;->a(Lcom/dolphin/browser/q/c/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/dolphin/browser/q/c/j;->a:Lcom/dolphin/browser/q/c/q;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/dolphin/browser/q/c/j;->a:Lcom/dolphin/browser/q/c/q;

    invoke-interface {v0}, Lcom/dolphin/browser/q/c/q;->a()V

    .line 668
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 662
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/q/c/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 675
    if-nez p1, :cond_1

    .line 676
    iget-object v0, p0, Lcom/dolphin/browser/q/c/j;->a:Lcom/dolphin/browser/q/c/q;

    invoke-interface {v0}, Lcom/dolphin/browser/q/c/q;->c()V

    .line 694
    :cond_0
    :goto_0
    return-void

    .line 680
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/q/c/j;->a:Lcom/dolphin/browser/q/c/q;

    if-eqz v0, :cond_0

    .line 682
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 683
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 684
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 685
    iget-object v0, p0, Lcom/dolphin/browser/q/c/j;->a:Lcom/dolphin/browser/q/c/q;

    invoke-interface {v0}, Lcom/dolphin/browser/q/c/q;->b()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 689
    :catch_0
    move-exception v0

    .line 690
    iget-object v1, p0, Lcom/dolphin/browser/q/c/j;->a:Lcom/dolphin/browser/q/c/q;

    invoke-interface {v1}, Lcom/dolphin/browser/q/c/q;->c()V

    .line 691
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 687
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/dolphin/browser/q/c/j;->a:Lcom/dolphin/browser/q/c/q;

    invoke-interface {v0}, Lcom/dolphin/browser/q/c/q;->c()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
