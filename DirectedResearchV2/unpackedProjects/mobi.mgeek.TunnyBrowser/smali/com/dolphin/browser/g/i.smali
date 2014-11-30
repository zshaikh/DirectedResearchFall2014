.class Lcom/dolphin/browser/g/i;
.super Landroid/os/AsyncTask;
.source "LocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/g/f;

.field final synthetic b:Lcom/dolphin/browser/g/h;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/g/h;Lcom/dolphin/browser/g/f;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/dolphin/browser/g/i;->b:Lcom/dolphin/browser/g/h;

    iput-object p2, p0, Lcom/dolphin/browser/g/i;->a:Lcom/dolphin/browser/g/f;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 29
    const/4 v0, 0x0

    .line 31
    :try_start_0
    new-instance v1, Lcom/dolphin/browser/g/a;

    iget-object v2, p0, Lcom/dolphin/browser/g/i;->b:Lcom/dolphin/browser/g/h;

    invoke-static {v2}, Lcom/dolphin/browser/g/h;->a(Lcom/dolphin/browser/g/h;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/dolphin/browser/g/a;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Lcom/dolphin/browser/g/a;->b()Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    .line 33
    :catch_0
    move-exception v1

    .line 34
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 42
    if-nez p1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/dolphin/browser/g/i;->a:Lcom/dolphin/browser/g/f;

    invoke-interface {v0}, Lcom/dolphin/browser/g/f;->a()V

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/g/i;->a:Lcom/dolphin/browser/g/f;

    check-cast p1, Landroid/location/Location;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/g/f;->a(Landroid/location/Location;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method
