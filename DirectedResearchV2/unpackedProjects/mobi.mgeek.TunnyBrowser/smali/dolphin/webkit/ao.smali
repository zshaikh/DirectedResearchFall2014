.class Ldolphin/webkit/ao;
.super Ljava/lang/Object;
.source "CallbackProxy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Ldolphin/webkit/JsPromptResult;

.field final synthetic b:Ldolphin/webkit/ae;


# direct methods
.method constructor <init>(Ldolphin/webkit/ae;Ldolphin/webkit/JsPromptResult;)V
    .locals 0

    .prologue
    .line 805
    iput-object p1, p0, Ldolphin/webkit/ao;->b:Ldolphin/webkit/ae;

    iput-object p2, p0, Ldolphin/webkit/ao;->a:Ldolphin/webkit/JsPromptResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Ldolphin/webkit/ao;->a:Ldolphin/webkit/JsPromptResult;

    invoke-virtual {v0}, Ldolphin/webkit/JsPromptResult;->cancel()V

    .line 809
    return-void
.end method
