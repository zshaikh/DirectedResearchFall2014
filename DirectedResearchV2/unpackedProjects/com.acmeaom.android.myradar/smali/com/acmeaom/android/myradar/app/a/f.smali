.class Lcom/acmeaom/android/myradar/app/a/f;
.super Landroid/os/AsyncTask;
.source "ProGuard"


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/acmeaom/android/myradar/app/a/e;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/myradar/app/a/e;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/acmeaom/android/myradar/app/a/f;->b:Lcom/acmeaom/android/myradar/app/a/e;

    iput-object p2, p0, Lcom/acmeaom/android/myradar/app/a/f;->a:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/a/f;->b:Lcom/acmeaom/android/myradar/app/a/e;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/app/a/e;->a(Lcom/acmeaom/android/myradar/app/a/e;)Lorg/json/JSONObject;

    move-result-object v0

    .line 48
    if-nez v0, :cond_0

    .line 49
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/acmeaom/android/myradar/app/a/f;->cancel(Z)Z

    .line 51
    :cond_0
    return-object v0
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 55
    if-eqz p1, :cond_0

    .line 57
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 58
    const-string v1, "motd.result"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/a/f;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/a/f;->a:Landroid/app/Activity;

    const v2, 0x11003

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/acmeaom/android/myradar/app/a/f;->a([Ljava/lang/Void;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 45
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/acmeaom/android/myradar/app/a/f;->a(Lorg/json/JSONObject;)V

    return-void
.end method
