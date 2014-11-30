.class abstract Ldolphin/webkit/hi;
.super Ljava/lang/Object;
.source "WebCoreThreadWatchdog.java"

# interfaces
.implements Ldolphin/webkit/WebView$WaitPolicyListener;
.implements Ljava/lang/Runnable;


# instance fields
.field protected c:Ldolphin/webkit/WebViewProvider;

.field final synthetic d:Ldolphin/webkit/hf;


# direct methods
.method constructor <init>(Ldolphin/webkit/hf;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Ldolphin/webkit/hi;->d:Ldolphin/webkit/hf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ldolphin/webkit/WebViewProvider;)Ldolphin/webkit/hi;
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Ldolphin/webkit/hi;->c:Ldolphin/webkit/WebViewProvider;

    .line 333
    return-object p0
.end method
