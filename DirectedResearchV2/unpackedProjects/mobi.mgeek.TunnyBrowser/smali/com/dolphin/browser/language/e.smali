.class Lcom/dolphin/browser/language/e;
.super Ljava/lang/Object;
.source "LanguageItem.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/dolphin/browser/language/b;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/language/b;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/dolphin/browser/language/e;->b:Lcom/dolphin/browser/language/b;

    iput-object p2, p0, Lcom/dolphin/browser/language/e;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/dolphin/browser/language/e;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/dolphin/browser/language/e;->b:Lcom/dolphin/browser/language/b;

    invoke-static {v1}, Lcom/dolphin/browser/language/b;->a(Lcom/dolphin/browser/language/b;)Lcom/dolphin/browser/language/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/language/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/bj;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 83
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dolphin/browser/language/e;->a:Landroid/content/Context;

    const-class v2, Lmobi/mgeek/TunnyBrowser/RestartActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 86
    const-string v1, "ignore_saved_state"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 87
    const-string v1, "show_confirm_dialog"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 88
    iget-object v1, p0, Lcom/dolphin/browser/language/e;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 89
    return-void
.end method
