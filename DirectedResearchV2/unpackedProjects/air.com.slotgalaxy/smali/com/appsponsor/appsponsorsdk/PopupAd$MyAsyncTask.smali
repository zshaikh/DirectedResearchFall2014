.class Lcom/appsponsor/appsponsorsdk/PopupAd$MyAsyncTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsponsor/appsponsorsdk/PopupAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsponsor/appsponsorsdk/PopupAd;


# direct methods
.method private constructor <init>(Lcom/appsponsor/appsponsorsdk/PopupAd;)V
    .locals 0

    iput-object p1, p0, Lcom/appsponsor/appsponsorsdk/PopupAd$MyAsyncTask;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAd;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appsponsor/appsponsorsdk/PopupAd;Lcom/appsponsor/appsponsorsdk/PopupAd$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appsponsor/appsponsorsdk/PopupAd$MyAsyncTask;-><init>(Lcom/appsponsor/appsponsorsdk/PopupAd;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/appsponsor/appsponsorsdk/PopupAd$MyAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/appsponsor/appsponsorsdk/PopupAd$MyAsyncTask;->postData()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/appsponsor/appsponsorsdk/PopupAd$MyAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/appsponsor/appsponsorsdk/PopupAd$MyAsyncTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public postData()V
    .locals 1

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAd$MyAsyncTask;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAd;

    # invokes: Lcom/appsponsor/appsponsorsdk/PopupAd;->makeRequest()V
    invoke-static {v0}, Lcom/appsponsor/appsponsorsdk/PopupAd;->access$200(Lcom/appsponsor/appsponsorsdk/PopupAd;)V

    return-void
.end method
