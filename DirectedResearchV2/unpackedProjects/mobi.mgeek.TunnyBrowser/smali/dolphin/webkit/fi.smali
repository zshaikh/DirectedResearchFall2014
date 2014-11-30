.class Ldolphin/webkit/fi;
.super Ljava/lang/Object;
.source "PNRReporter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Ldolphin/webkit/WebView$WaitPolicyListener;

.field final synthetic b:Ldolphin/webkit/fh;


# direct methods
.method constructor <init>(Ldolphin/webkit/fh;Ldolphin/webkit/WebView$WaitPolicyListener;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Ldolphin/webkit/fi;->b:Ldolphin/webkit/fh;

    iput-object p2, p0, Ldolphin/webkit/fi;->a:Ldolphin/webkit/WebView$WaitPolicyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Ldolphin/webkit/fi;->b:Ldolphin/webkit/fh;

    invoke-static {v0}, Ldolphin/webkit/fh;->a(Ldolphin/webkit/fh;)V

    .line 86
    iget-object v0, p0, Ldolphin/webkit/fi;->a:Ldolphin/webkit/WebView$WaitPolicyListener;

    invoke-interface {v0}, Ldolphin/webkit/WebView$WaitPolicyListener;->onContinueWait()V

    .line 87
    return-void
.end method
