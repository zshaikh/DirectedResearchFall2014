.class public Lcom/dolphin/browser/DolphinService/WebService/d;
.super Lcom/dolphin/browser/util/f;
.source "AsyncServiceTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/dolphin/browser/DolphinService/WebService/b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/dolphin/browser/DolphinService/WebService/c;

.field private b:Lcom/dolphin/browser/DolphinService/WebService/a;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/DolphinService/WebService/c;Lcom/dolphin/browser/DolphinService/WebService/a;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/WebService/d;->a:Lcom/dolphin/browser/DolphinService/WebService/c;

    .line 14
    iput-object p2, p0, Lcom/dolphin/browser/DolphinService/WebService/d;->b:Lcom/dolphin/browser/DolphinService/WebService/a;

    .line 15
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/dolphin/browser/DolphinService/WebService/b;
    .locals 2

    .prologue
    .line 27
    const-string v0, "AsyncServiceTask"

    const-string v1, "run in background"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    new-instance v1, Lcom/dolphin/browser/DolphinService/WebService/b;

    invoke-direct {v1}, Lcom/dolphin/browser/DolphinService/WebService/b;-><init>()V

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/WebService/d;->a:Lcom/dolphin/browser/DolphinService/WebService/c;

    invoke-interface {v0}, Lcom/dolphin/browser/DolphinService/WebService/c;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/dolphin/browser/DolphinService/WebService/b;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return-object v1

    .line 31
    :catch_0
    move-exception v0

    .line 32
    iput-object v0, v1, Lcom/dolphin/browser/DolphinService/WebService/b;->b:Ljava/lang/Throwable;

    goto :goto_0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/DolphinService/WebService/d;->a([Ljava/lang/Void;)Lcom/dolphin/browser/DolphinService/WebService/b;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/WebService/d;->b:Lcom/dolphin/browser/DolphinService/WebService/a;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/WebService/d;->b:Lcom/dolphin/browser/DolphinService/WebService/a;

    invoke-interface {v0}, Lcom/dolphin/browser/DolphinService/WebService/a;->a()V

    .line 22
    :cond_0
    return-void
.end method

.method protected a(Lcom/dolphin/browser/DolphinService/WebService/b;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/WebService/d;->b:Lcom/dolphin/browser/DolphinService/WebService/a;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/WebService/d;->b:Lcom/dolphin/browser/DolphinService/WebService/a;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/DolphinService/WebService/a;->a(Lcom/dolphin/browser/DolphinService/WebService/b;)V

    .line 43
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 7
    check-cast p1, Lcom/dolphin/browser/DolphinService/WebService/b;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/DolphinService/WebService/d;->a(Lcom/dolphin/browser/DolphinService/WebService/b;)V

    return-void
.end method
