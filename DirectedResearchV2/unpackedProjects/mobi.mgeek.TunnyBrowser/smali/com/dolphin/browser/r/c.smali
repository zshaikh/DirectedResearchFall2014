.class Lcom/dolphin/browser/r/c;
.super Ljava/lang/Object;
.source "SonarLoginTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/r/b;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/r/b;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/dolphin/browser/r/c;->a:Lcom/dolphin/browser/r/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 76
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/dolphin/browser/sync/a/b;->a(I)Lcom/dolphin/browser/sync/a/a;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Lcom/dolphin/browser/sync/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    const-string v0, "SonarLoginTask"

    const-string v1, "Bookmark sync state is false"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_0
    return-void

    .line 81
    :cond_0
    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 82
    invoke-static {}, Lcom/dolphin/browser/sync/s;->s()Lcom/dolphin/browser/sync/s;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/sync/s;->a(ZLcom/dolphin/browser/DolphinService/WebService/a;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    const-string v1, "SonarLoginTask"

    const-string v2, "syncThread runnable catch"

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
