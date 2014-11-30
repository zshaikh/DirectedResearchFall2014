.class public Lcom/appoxee/asyncs/ReportApplicationActiveAsync;
.super Landroid/os/AsyncTask;
.source "ReportApplicationActiveAsync.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/appoxee/asyncs/ReportApplicationActiveAsync;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 14
    :try_start_0
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->reportApplicationActive()Z
    :try_end_0
    .catch Lcom/appoxee/AppoxeeClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 15
    :catch_0
    move-exception v0

    .line 16
    .local v0, "e":Lcom/appoxee/AppoxeeClientException;
    invoke-virtual {v0}, Lcom/appoxee/AppoxeeClientException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/appoxee/asyncs/ReportApplicationActiveAsync;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 24
    new-instance v0, Lcom/appoxee/inbox/Update;

    invoke-direct {v0}, Lcom/appoxee/inbox/Update;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Regular"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/appoxee/inbox/Update;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 26
    return-void
.end method
