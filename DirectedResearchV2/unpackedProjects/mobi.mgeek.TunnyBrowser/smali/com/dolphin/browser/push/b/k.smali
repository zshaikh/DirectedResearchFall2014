.class public abstract Lcom/dolphin/browser/push/b/k;
.super Lcom/dolphin/browser/push/b/j;
.source "BaseSearchEngineMesssageExcutor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/dolphin/browser/push/b/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dolphin/browser/push/v;)V
    .locals 2

    .prologue
    .line 19
    invoke-virtual {p1}, Lcom/dolphin/browser/push/v;->c()Lcom/dolphin/browser/push/a/a;

    move-result-object v0

    .line 20
    instance-of v1, v0, Lcom/dolphin/browser/push/a/b;

    if-nez v1, :cond_0

    .line 27
    :goto_0
    return-void

    .line 23
    :cond_0
    check-cast v0, Lcom/dolphin/browser/push/a/b;

    .line 24
    invoke-virtual {v0}, Lcom/dolphin/browser/push/a/b;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/push/b/k;->a(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method protected abstract a(Lorg/json/JSONObject;)V
.end method
