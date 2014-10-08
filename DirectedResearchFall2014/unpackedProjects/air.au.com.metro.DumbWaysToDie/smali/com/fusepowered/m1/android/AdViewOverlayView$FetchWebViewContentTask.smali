.class Lcom/fusepowered/m1/android/AdViewOverlayView$FetchWebViewContentTask;
.super Landroid/os/AsyncTask;
.source "AdViewOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/AdViewOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FetchWebViewContentTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private _overlayViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/fusepowered/m1/android/AdViewOverlayView;",
            ">;"
        }
    .end annotation
.end field

.field private baseUrl:Ljava/lang/String;

.field private cancelVideo:Z


# direct methods
.method public constructor <init>(Lcom/fusepowered/m1/android/AdViewOverlayView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lcom/fusepowered/m1/android/AdViewOverlayView;
    .param p2, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 603
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 604
    iput-object p2, p0, Lcom/fusepowered/m1/android/AdViewOverlayView$FetchWebViewContentTask;->baseUrl:Ljava/lang/String;

    .line 605
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView$FetchWebViewContentTask;->_overlayViewRef:Ljava/lang/ref/WeakReference;

    .line 606
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 594
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/fusepowered/m1/android/AdViewOverlayView$FetchWebViewContentTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 7
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 625
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/fusepowered/m1/android/AdViewOverlayView$FetchWebViewContentTask;->cancelVideo:Z

    .line 626
    iget-object v5, p0, Lcom/fusepowered/m1/android/AdViewOverlayView$FetchWebViewContentTask;->baseUrl:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 630
    :try_start_0
    new-instance v5, Lcom/fusepowered/m1/android/HttpGetRequest;

    invoke-direct {v5}, Lcom/fusepowered/m1/android/HttpGetRequest;-><init>()V

    iget-object v6, p0, Lcom/fusepowered/m1/android/AdViewOverlayView$FetchWebViewContentTask;->baseUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/fusepowered/m1/android/HttpGetRequest;->get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 631
    .local v2, "httpResponse":Lorg/apache/http/HttpResponse;
    if-eqz v2, :cond_0

    .line 633
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    .line 634
    .local v3, "statusLine":Lorg/apache/http/StatusLine;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0x194

    if-eq v5, v6, :cond_0

    .line 636
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 638
    .local v1, "httpEntity":Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_0

    .line 640
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Lcom/fusepowered/m1/android/HttpGetRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 642
    .local v4, "webContent":Ljava/lang/String;
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/fusepowered/m1/android/AdViewOverlayView$FetchWebViewContentTask;->cancelVideo:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v4

    .line 653
    .end local v1    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v2    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v3    # "statusLine":Lorg/apache/http/StatusLine;
    .end local v4    # "webContent":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 648
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 650
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 653
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 594
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/fusepowered/m1/android/AdViewOverlayView$FetchWebViewContentTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .param p1, "webContent"    # Ljava/lang/String;

    .prologue
    .line 660
    iget-object v2, p0, Lcom/fusepowered/m1/android/AdViewOverlayView$FetchWebViewContentTask;->_overlayViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/m1/android/AdViewOverlayView;

    .line 661
    .local v1, "view":Lcom/fusepowered/m1/android/AdViewOverlayView;
    if-eqz v1, :cond_1

    .line 663
    iget-boolean v2, p0, Lcom/fusepowered/m1/android/AdViewOverlayView$FetchWebViewContentTask;->cancelVideo:Z

    if-eqz v2, :cond_0

    .line 665
    iget-object v2, v1, Lcom/fusepowered/m1/android/AdViewOverlayView;->overlayActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;

    .line 666
    .local v0, "overlayActivity":Lcom/fusepowered/m1/android/AdViewOverlayActivity;
    if-eqz v0, :cond_2

    .line 668
    invoke-virtual {v0}, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->finish()V

    .line 675
    .end local v0    # "overlayActivity":Lcom/fusepowered/m1/android/AdViewOverlayActivity;
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    iget-object v2, v1, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v2, v2, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    if-eqz v2, :cond_1

    .line 677
    iget-object v2, v1, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v2, v2, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v3, p0, Lcom/fusepowered/m1/android/AdViewOverlayView$FetchWebViewContentTask;->baseUrl:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lcom/fusepowered/m1/android/MMAdImplController;->setWebViewContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    :cond_1
    return-void

    .line 672
    .restart local v0    # "overlayActivity":Lcom/fusepowered/m1/android/AdViewOverlayActivity;
    :cond_2
    # invokes: Lcom/fusepowered/m1/android/AdViewOverlayView;->removeProgressBar()V
    invoke-static {v1}, Lcom/fusepowered/m1/android/AdViewOverlayView;->access$200(Lcom/fusepowered/m1/android/AdViewOverlayView;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 611
    iget-object v1, p0, Lcom/fusepowered/m1/android/AdViewOverlayView$FetchWebViewContentTask;->_overlayViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/AdViewOverlayView;

    .line 612
    .local v0, "view":Lcom/fusepowered/m1/android/AdViewOverlayView;
    if-eqz v0, :cond_0

    .line 614
    # getter for: Lcom/fusepowered/m1/android/AdViewOverlayView;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/fusepowered/m1/android/AdViewOverlayView;->access$400(Lcom/fusepowered/m1/android/AdViewOverlayView;)Landroid/widget/ProgressBar;

    move-result-object v1

    if-nez v1, :cond_0

    .line 616
    # invokes: Lcom/fusepowered/m1/android/AdViewOverlayView;->initProgressBar()V
    invoke-static {v0}, Lcom/fusepowered/m1/android/AdViewOverlayView;->access$500(Lcom/fusepowered/m1/android/AdViewOverlayView;)V

    .line 619
    :cond_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 620
    return-void
.end method
