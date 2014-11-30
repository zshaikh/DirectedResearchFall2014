.class Lcom/fusepowered/activities/FuseApiBrowser$Callback$1;
.super Ljava/lang/Object;
.source "FuseApiBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/activities/FuseApiBrowser$Callback;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fusepowered/activities/FuseApiBrowser$Callback;


# direct methods
.method constructor <init>(Lcom/fusepowered/activities/FuseApiBrowser$Callback;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/fusepowered/activities/FuseApiBrowser$Callback$1;->this$1:Lcom/fusepowered/activities/FuseApiBrowser$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-string v3, "WEBCLIENT"

    .line 30
    :try_start_0
    const-string v1, "WEBCLIENT"

    const-string v2, "We\'re waiting for you!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const-wide/16 v1, 0x1388

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    iget-object v1, p0, Lcom/fusepowered/activities/FuseApiBrowser$Callback$1;->this$1:Lcom/fusepowered/activities/FuseApiBrowser$Callback;

    iget-boolean v1, v1, Lcom/fusepowered/activities/FuseApiBrowser$Callback;->completed:Z

    if-nez v1, :cond_0

    .line 37
    const-string v1, "WEBCLIENT"

    const-string v1, "Didn\'t finish!!"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v1, p0, Lcom/fusepowered/activities/FuseApiBrowser$Callback$1;->this$1:Lcom/fusepowered/activities/FuseApiBrowser$Callback;

    iget-object v1, v1, Lcom/fusepowered/activities/FuseApiBrowser$Callback;->this$0:Lcom/fusepowered/activities/FuseApiBrowser;

    invoke-virtual {v1}, Lcom/fusepowered/activities/FuseApiBrowser;->finish()V

    .line 41
    :cond_0
    return-void

    .line 32
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 33
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
