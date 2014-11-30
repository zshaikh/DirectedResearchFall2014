.class Ldolphin/webkit/fj;
.super Ljava/lang/Object;
.source "PNRReporter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ldolphin/webkit/WebView$WaitPolicyListener;

.field final synthetic b:Ldolphin/webkit/fh;


# direct methods
.method constructor <init>(Ldolphin/webkit/fh;Ldolphin/webkit/WebView$WaitPolicyListener;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Ldolphin/webkit/fj;->b:Ldolphin/webkit/fh;

    iput-object p2, p0, Ldolphin/webkit/fj;->a:Ldolphin/webkit/WebView$WaitPolicyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Ldolphin/webkit/fj;->b:Ldolphin/webkit/fh;

    invoke-static {v0}, Ldolphin/webkit/fh;->b(Ldolphin/webkit/fh;)V

    .line 78
    iget-object v0, p0, Ldolphin/webkit/fj;->a:Ldolphin/webkit/WebView$WaitPolicyListener;

    invoke-interface {v0}, Ldolphin/webkit/WebView$WaitPolicyListener;->onStopWait()V

    .line 79
    return-void
.end method
