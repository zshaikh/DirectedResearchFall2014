.class Ldolphin/webkit/dl;
.super Ljava/lang/Object;
.source "HTML5VideoFullScreenEx.java"

# interfaces
.implements Lcom/dolphin/player/bl;


# instance fields
.field final synthetic a:Ldolphin/webkit/dk;


# direct methods
.method constructor <init>(Ldolphin/webkit/dk;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Ldolphin/webkit/dl;->a:Ldolphin/webkit/dk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Ldolphin/webkit/dl;->a:Ldolphin/webkit/dk;

    invoke-static {v0}, Ldolphin/webkit/dk;->a(Ldolphin/webkit/dk;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->F()Ldolphin/webkit/WebChromeClient;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Ldolphin/webkit/WebChromeClient;->onHideCustomView()V

    .line 159
    :cond_0
    return-void
.end method
