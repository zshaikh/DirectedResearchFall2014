.class final Lcom/acmeaom/android/myradar/b/d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/acmeaom/android/myradar/b/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/acmeaom/android/myradar/b/d;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 461
    iget-object v0, p0, Lcom/acmeaom/android/myradar/b/d;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 462
    :goto_0
    iget-object v1, p0, Lcom/acmeaom/android/myradar/b/d;->b:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 463
    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/myradar/b/d;->a:Ljava/lang/String;

    goto :goto_0
.end method
