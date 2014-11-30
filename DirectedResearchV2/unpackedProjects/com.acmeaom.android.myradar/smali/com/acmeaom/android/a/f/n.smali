.class Lcom/acmeaom/android/a/f/n;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/acmeaom/android/a/f/m;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/a/f/m;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/acmeaom/android/a/f/n;->b:Lcom/acmeaom/android/a/f/m;

    iput-object p2, p0, Lcom/acmeaom/android/a/f/n;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/acmeaom/android/a/f/n;->b:Lcom/acmeaom/android/a/f/m;

    invoke-static {v0}, Lcom/acmeaom/android/a/f/m;->a(Lcom/acmeaom/android/a/f/m;)Landroid/view/View;

    move-result-object v0

    .line 39
    if-nez v0, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    const v1, 0x7f080033

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 42
    if-eqz v0, :cond_0

    .line 43
    iget-object v1, p0, Lcom/acmeaom/android/a/f/n;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Radar loading ..."

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/acmeaom/android/a/f/n;->a:Ljava/lang/String;

    goto :goto_1
.end method
