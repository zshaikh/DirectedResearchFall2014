.class final Lcom/acmeaom/android/myradar/app/ui/m;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/net/Uri;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/acmeaom/android/myradar/app/ui/m;->a:Landroid/net/Uri;

    iput-object p2, p0, Lcom/acmeaom/android/myradar/app/ui/m;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 52
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/acmeaom/android/myradar/app/ui/m;->a:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 53
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/ui/m;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 54
    return-void
.end method
