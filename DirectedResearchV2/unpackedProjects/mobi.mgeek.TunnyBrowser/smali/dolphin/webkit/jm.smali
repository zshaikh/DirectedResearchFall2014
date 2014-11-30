.class Ldolphin/webkit/jm;
.super Ljava/lang/Object;
.source "WebViewCore.java"

# interfaces
.implements Ldolphin/webkit/GeolocationPermissions$Callback;


# instance fields
.field final synthetic a:Ldolphin/webkit/WebViewCore;


# direct methods
.method constructor <init>(Ldolphin/webkit/WebViewCore;)V
    .locals 0

    .prologue
    .line 581
    iput-object p1, p0, Ldolphin/webkit/jm;->a:Ldolphin/webkit/WebViewCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/String;ZZ)V
    .locals 3

    .prologue
    .line 584
    new-instance v0, Ldolphin/webkit/jt;

    invoke-direct {v0}, Ldolphin/webkit/jt;-><init>()V

    .line 585
    iput-object p1, v0, Ldolphin/webkit/jt;->a:Ljava/lang/String;

    .line 586
    iput-boolean p2, v0, Ldolphin/webkit/jt;->b:Z

    .line 587
    iput-boolean p3, v0, Ldolphin/webkit/jt;->c:Z

    .line 589
    iget-object v1, p0, Ldolphin/webkit/jm;->a:Ldolphin/webkit/WebViewCore;

    const/16 v2, 0xb4

    invoke-virtual {v1, v2, v0}, Ldolphin/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 590
    return-void
.end method
