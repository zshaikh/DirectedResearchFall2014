.class final Lcom/acmeaom/android/myradar/b/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/acmeaom/android/myradar/b/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/acmeaom/android/myradar/b/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/acmeaom/android/myradar/b/b;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/acmeaom/android/myradar/b/b;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/acmeaom/android/myradar/b/b;->b:Ljava/lang/String;

    .line 161
    :goto_0
    iget-object v1, p0, Lcom/acmeaom/android/myradar/b/b;->c:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 162
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/myradar/b/b;->a:Ljava/lang/String;

    goto :goto_0
.end method
