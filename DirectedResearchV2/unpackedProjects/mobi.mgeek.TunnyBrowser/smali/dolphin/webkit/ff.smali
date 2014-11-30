.class Ldolphin/webkit/ff;
.super Ljava/lang/Thread;
.source "PNRReportSender.java"


# instance fields
.field final synthetic a:Landroid/os/AsyncTask;

.field final synthetic b:Ldolphin/webkit/fd;


# direct methods
.method constructor <init>(Ldolphin/webkit/fd;Landroid/os/AsyncTask;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Ldolphin/webkit/ff;->b:Ldolphin/webkit/fd;

    iput-object p2, p0, Ldolphin/webkit/ff;->a:Landroid/os/AsyncTask;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 65
    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/ff;->a:Landroid/os/AsyncTask;

    const-wide/16 v1, 0x1e

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/AsyncTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    iget-object v0, p0, Ldolphin/webkit/ff;->a:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0
.end method
