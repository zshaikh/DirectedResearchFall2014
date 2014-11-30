.class Ldolphin/webkit/al;
.super Ljava/lang/Object;
.source "CallbackProxy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Ldolphin/webkit/JsResult;

.field final synthetic b:Ldolphin/webkit/ae;


# direct methods
.method constructor <init>(Ldolphin/webkit/ae;Ldolphin/webkit/JsResult;)V
    .locals 0

    .prologue
    .line 749
    iput-object p1, p0, Ldolphin/webkit/al;->b:Ldolphin/webkit/ae;

    iput-object p2, p0, Ldolphin/webkit/al;->a:Ldolphin/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Ldolphin/webkit/al;->a:Ldolphin/webkit/JsResult;

    invoke-virtual {v0}, Ldolphin/webkit/JsResult;->cancel()V

    .line 753
    return-void
.end method
