.class final Lcom/acmeaom/android/myradar/app/ui/o;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Landroid/content/SharedPreferences$Editor;

.field final synthetic b:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/acmeaom/android/myradar/app/ui/o;->a:Landroid/content/SharedPreferences$Editor;

    iput-object p2, p0, Lcom/acmeaom/android/myradar/app/ui/o;->b:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 78
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/o;->a:Landroid/content/SharedPreferences$Editor;

    const-string v1, "app.rating.inplay"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 79
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/o;->b:Landroid/content/SharedPreferences;

    const-string v1, "app.launch.count"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 80
    iget-object v2, p0, Lcom/acmeaom/android/myradar/app/ui/o;->a:Landroid/content/SharedPreferences$Editor;

    const-string v3, "app.launch.count"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 81
    const-wide/16 v2, 0x14

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/o;->a:Landroid/content/SharedPreferences$Editor;

    const-string v1, "app.rating.enabled"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/o;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 85
    return-void
.end method
