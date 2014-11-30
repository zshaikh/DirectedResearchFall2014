.class Ldolphin/webkit/aq;
.super Ljava/lang/Object;
.source "CallbackProxy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ldolphin/webkit/JsPromptResult;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Ldolphin/webkit/ae;


# direct methods
.method constructor <init>(Ldolphin/webkit/ae;Ldolphin/webkit/JsPromptResult;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 788
    iput-object p1, p0, Ldolphin/webkit/aq;->c:Ldolphin/webkit/ae;

    iput-object p2, p0, Ldolphin/webkit/aq;->a:Ldolphin/webkit/JsPromptResult;

    iput-object p3, p0, Ldolphin/webkit/aq;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 792
    iget-object v0, p0, Ldolphin/webkit/aq;->a:Ldolphin/webkit/JsPromptResult;

    iget-object v1, p0, Ldolphin/webkit/aq;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldolphin/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 794
    return-void
.end method
