.class public Lcom/dolphin/browser/push/b/c;
.super Lcom/dolphin/browser/push/b/j;
.source "AddModifyUrlStrategyExcutor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/dolphin/browser/push/b/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/push/v;)V
    .locals 2

    .prologue
    .line 16
    invoke-virtual {p1}, Lcom/dolphin/browser/push/v;->c()Lcom/dolphin/browser/push/a/a;

    move-result-object v0

    instance-of v0, v0, Lcom/dolphin/browser/push/a/b;

    if-nez v0, :cond_0

    .line 25
    :goto_0
    return-void

    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/dolphin/browser/push/v;->c()Lcom/dolphin/browser/push/a/a;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/push/a/b;

    .line 20
    invoke-virtual {v0}, Lcom/dolphin/browser/push/a/b;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 21
    new-instance v1, Lcom/dolphin/browser/search/g/f;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/search/g/f;-><init>(Lorg/json/JSONObject;)V

    .line 22
    invoke-static {}, Lcom/dolphin/browser/search/g/a;->a()Lcom/dolphin/browser/search/g/a;

    move-result-object v0

    .line 23
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/search/g/a;->a(Lcom/dolphin/browser/search/g/f;)V

    .line 24
    invoke-virtual {v0}, Lcom/dolphin/browser/search/g/a;->c()V

    goto :goto_0
.end method
