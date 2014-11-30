.class public Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;
.super Ljava/lang/Object;
.source "ZipDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager$Listener;
    }
.end annotation


# static fields
.field public static final LOAD_FAIL:I = -0x1

.field public static final LOAD_PROGRESS:I = 0x1

.field public static final LOAD_SUCCESS:I = 0xa

.field public static final OPEN_FAIL:I = -0x2


# instance fields
.field private final destinationDirectory:Ljava/lang/String;

.field private dlthread:Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadThread;

.field private handler:Landroid/os/Handler;

.field private final listener:Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager$Listener;

.field private final timeout:I

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager$Listener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "timeout"    # I
    .param p2, "listener"    # Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager$Listener;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "destinationDirectory"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;->timeout:I

    .line 34
    iput-object p2, p0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;->listener:Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager$Listener;

    .line 35
    iput-object p3, p0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;->url:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;->destinationDirectory:Ljava/lang/String;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;)Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager$Listener;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;->listener:Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager$Listener;

    return-object v0
.end method

.method private getCallback()Landroid/os/Handler$Callback;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager$1;

    invoke-direct {v0, p0}, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager$1;-><init>(Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;)V

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 5

    .prologue
    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {p0}, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;->getCallback()Landroid/os/Handler$Callback;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;->handler:Landroid/os/Handler;

    .line 41
    new-instance v0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadThread;

    iget v1, p0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;->timeout:I

    iget-object v2, p0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;->url:Ljava/lang/String;

    iget-object v4, p0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;->destinationDirectory:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadThread;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;->dlthread:Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadThread;

    .line 42
    iget-object v0, p0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;->dlthread:Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadThread;->setPriority(I)V

    .line 43
    iget-object v0, p0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;->dlthread:Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadThread;

    const-string v1, "Slotomania Zip Loader Thread"

    invoke-virtual {v0, v1}, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadThread;->setName(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;->dlthread:Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadThread;

    invoke-virtual {v0}, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadThread;->start()V

    .line 45
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;->dlthread:Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadThread;

    invoke-virtual {v0}, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadThread;->interrupt()V

    .line 49
    return-void
.end method
