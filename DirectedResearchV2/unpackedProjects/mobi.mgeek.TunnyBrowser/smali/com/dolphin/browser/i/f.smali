.class Lcom/dolphin/browser/i/f;
.super Ljava/lang/Object;
.source "NameServiceManager.java"

# interfaces
.implements Lcom/dolphin/browser/i/a/c;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/i/e;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/i/e;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/dolphin/browser/i/f;->a:Lcom/dolphin/browser/i/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 63
    if-nez p1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/i/f;->a:Lcom/dolphin/browser/i/e;

    iget-object v0, v0, Lcom/dolphin/browser/i/e;->a:Lcom/dolphin/browser/i/d;

    invoke-static {v0, p1}, Lcom/dolphin/browser/i/d;->a(Lcom/dolphin/browser/i/d;Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/dolphin/browser/i/f;->a:Lcom/dolphin/browser/i/e;

    iget-object v1, v1, Lcom/dolphin/browser/i/e;->a:Lcom/dolphin/browser/i/d;

    invoke-virtual {v1}, Lcom/dolphin/browser/i/d;->l()Ljava/util/HashMap;

    move-result-object v1

    .line 68
    invoke-static {v0, v1}, Lcom/dolphin/browser/i/d;->a(Ljava/util/HashMap;Ljava/util/HashMap;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/dolphin/browser/i/f;->a:Lcom/dolphin/browser/i/e;

    iget-object v1, v1, Lcom/dolphin/browser/i/e;->a:Lcom/dolphin/browser/i/d;

    invoke-static {v1}, Lcom/dolphin/browser/i/d;->a(Lcom/dolphin/browser/i/d;)Lcom/dolphin/browser/i/g;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/i/g;->a(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/dolphin/browser/i/f;->a:Lcom/dolphin/browser/i/e;

    iget-object v1, v1, Lcom/dolphin/browser/i/e;->a:Lcom/dolphin/browser/i/d;

    invoke-static {v1, v0}, Lcom/dolphin/browser/i/d;->a(Lcom/dolphin/browser/i/d;Ljava/util/HashMap;)Ljava/util/HashMap;

    goto :goto_0
.end method
