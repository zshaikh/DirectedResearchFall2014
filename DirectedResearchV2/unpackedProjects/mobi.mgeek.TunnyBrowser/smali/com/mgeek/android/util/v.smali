.class Lcom/mgeek/android/util/v;
.super Ljava/lang/Object;
.source "UpdateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mgeek/android/util/UpdateActivity;


# direct methods
.method constructor <init>(Lcom/mgeek/android/util/UpdateActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/mgeek/android/util/v;->b:Lcom/mgeek/android/util/UpdateActivity;

    iput-object p2, p0, Lcom/mgeek/android/util/v;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 69
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 72
    iget-object v1, p0, Lcom/mgeek/android/util/v;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 74
    iget-object v1, p0, Lcom/mgeek/android/util/v;->b:Lcom/mgeek/android/util/UpdateActivity;

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 75
    iget-object v0, p0, Lcom/mgeek/android/util/v;->b:Lcom/mgeek/android/util/UpdateActivity;

    invoke-virtual {v0}, Lcom/mgeek/android/util/UpdateActivity;->finish()V

    .line 76
    return-void
.end method
