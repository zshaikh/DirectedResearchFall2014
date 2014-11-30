.class Lcom/dolphin/browser/dolphinwebkit/e;
.super Ljava/lang/Object;
.source "MyWebView.java"

# interfaces
.implements Ldolphin/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldolphin/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/core/ValueCallback;

.field final synthetic b:Lcom/dolphin/browser/dolphinwebkit/MyWebView;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/dolphinwebkit/MyWebView;Lcom/dolphin/browser/core/ValueCallback;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lcom/dolphin/browser/dolphinwebkit/e;->b:Lcom/dolphin/browser/dolphinwebkit/MyWebView;

    iput-object p2, p0, Lcom/dolphin/browser/dolphinwebkit/e;->a:Lcom/dolphin/browser/core/ValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 514
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/dolphinwebkit/e;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    .line 519
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/e;->a:Lcom/dolphin/browser/core/ValueCallback;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/e;->a:Lcom/dolphin/browser/core/ValueCallback;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 522
    :cond_0
    return-void
.end method
