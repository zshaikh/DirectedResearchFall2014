.class Lcom/pocketchange/android/http/AsyncHttpRequestService$c;
.super Lcom/pocketchange/android/util/ThreadUtils$NamedThreadFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pocketchange/android/http/AsyncHttpRequestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 523
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pocketchange/android/util/ThreadUtils$NamedThreadFactory;-><init>(Ljava/lang/String;Z)V

    .line 524
    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 528
    invoke-super {p0, p1}, Lcom/pocketchange/android/util/ThreadUtils$NamedThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 529
    new-instance v1, Lcom/pocketchange/android/http/AsyncHttpRequestService$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/pocketchange/android/http/AsyncHttpRequestService$b;-><init>(Lcom/pocketchange/android/http/AsyncHttpRequestService$1;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 530
    return-object v0
.end method
