.class final Lcom/acmeaom/android/myradar/app/ui/s;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/SharedPreferences$Editor;

.field final synthetic b:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences$Editor;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/acmeaom/android/myradar/app/ui/s;->a:Landroid/content/SharedPreferences$Editor;

    iput-object p2, p0, Lcom/acmeaom/android/myradar/app/ui/s;->b:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/s;->a:Landroid/content/SharedPreferences$Editor;

    const-string v1, "app.rating.enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 136
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/s;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 137
    return-void
.end method
