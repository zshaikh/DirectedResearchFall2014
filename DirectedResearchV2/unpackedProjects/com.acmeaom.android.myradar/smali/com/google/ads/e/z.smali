.class final Lcom/google/ads/e/z;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/webkit/JsPromptResult;

.field final synthetic b:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/webkit/JsPromptResult;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/google/ads/e/z;->a:Landroid/webkit/JsPromptResult;

    iput-object p2, p0, Lcom/google/ads/e/z;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/ads/e/z;->a:Landroid/webkit/JsPromptResult;

    iget-object v1, p0, Lcom/google/ads/e/z;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 409
    return-void
.end method