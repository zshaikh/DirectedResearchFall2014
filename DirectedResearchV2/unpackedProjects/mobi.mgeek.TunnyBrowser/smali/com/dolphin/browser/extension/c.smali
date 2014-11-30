.class Lcom/dolphin/browser/extension/c;
.super Ljava/lang/Object;
.source "AdBlockAddon.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/dolphin/browser/extension/AdBlockAddon;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/extension/AdBlockAddon;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/dolphin/browser/extension/c;->b:Lcom/dolphin/browser/extension/AdBlockAddon;

    iput-object p2, p0, Lcom/dolphin/browser/extension/c;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 112
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    const-string v1, "market://details?id=com.NeedForSpeed.ToolKit.AdBlock"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 114
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 115
    iget-object v1, p0, Lcom/dolphin/browser/extension/c;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 116
    return-void
.end method
