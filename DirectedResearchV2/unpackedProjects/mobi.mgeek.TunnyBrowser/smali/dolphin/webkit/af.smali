.class Ldolphin/webkit/af;
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
    .line 706
    iput-object p1, p0, Ldolphin/webkit/af;->b:Ldolphin/webkit/ae;

    iput-object p2, p0, Ldolphin/webkit/af;->a:Ldolphin/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Ldolphin/webkit/af;->a:Ldolphin/webkit/JsResult;

    invoke-virtual {v0}, Ldolphin/webkit/JsResult;->cancel()V

    .line 710
    return-void
.end method