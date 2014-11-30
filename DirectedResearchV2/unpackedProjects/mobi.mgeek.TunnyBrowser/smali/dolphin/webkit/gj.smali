.class Ldolphin/webkit/gj;
.super Ldolphin/webkit/WebChromeClient;
.source "Prereader.java"


# instance fields
.field final synthetic a:Ldolphin/webkit/Prereader;


# direct methods
.method private constructor <init>(Ldolphin/webkit/Prereader;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Ldolphin/webkit/gj;->a:Ldolphin/webkit/Prereader;

    invoke-direct {p0}, Ldolphin/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldolphin/webkit/Prereader;Ldolphin/webkit/gd;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Ldolphin/webkit/gj;-><init>(Ldolphin/webkit/Prereader;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Ldolphin/webkit/WebView;I)V
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p1}, Ldolphin/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    .line 93
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 95
    :cond_0
    return-void
.end method
