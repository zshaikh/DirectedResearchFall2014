.class Ldolphin/webkit/jl;
.super Ljava/lang/Object;
.source "WebViewCore.java"

# interfaces
.implements Ldolphin/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldolphin/webkit/ValueCallback",
        "<[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldolphin/webkit/WebViewCore;


# direct methods
.method constructor <init>(Ldolphin/webkit/WebViewCore;)V
    .locals 0

    .prologue
    .line 563
    iput-object p1, p0, Ldolphin/webkit/jl;->a:Ldolphin/webkit/WebViewCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Ldolphin/webkit/jl;->a:Ldolphin/webkit/WebViewCore;

    const/16 v1, 0xb5

    invoke-virtual {v0, v1, p1}, Ldolphin/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 567
    return-void
.end method

.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 563
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ldolphin/webkit/jl;->a([Ljava/lang/String;)V

    return-void
.end method
