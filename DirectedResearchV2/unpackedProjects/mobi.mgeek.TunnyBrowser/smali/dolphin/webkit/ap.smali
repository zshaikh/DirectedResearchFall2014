.class Ldolphin/webkit/ap;
.super Ljava/lang/Object;
.source "CallbackProxy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ldolphin/webkit/JsPromptResult;

.field final synthetic b:Ldolphin/webkit/ae;


# direct methods
.method constructor <init>(Ldolphin/webkit/ae;Ldolphin/webkit/JsPromptResult;)V
    .locals 0

    .prologue
    .line 797
    iput-object p1, p0, Ldolphin/webkit/ap;->b:Ldolphin/webkit/ae;

    iput-object p2, p0, Ldolphin/webkit/ap;->a:Ldolphin/webkit/JsPromptResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Ldolphin/webkit/ap;->a:Ldolphin/webkit/JsPromptResult;

    invoke-virtual {v0}, Ldolphin/webkit/JsPromptResult;->cancel()V

    .line 802
    return-void
.end method
