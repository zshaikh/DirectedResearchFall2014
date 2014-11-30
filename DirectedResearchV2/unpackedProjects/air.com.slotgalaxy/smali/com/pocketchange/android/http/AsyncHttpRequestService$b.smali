.class Lcom/pocketchange/android/http/AsyncHttpRequestService$b;
.super Lcom/pocketchange/android/util/SDKThreadExceptionHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pocketchange/android/http/AsyncHttpRequestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 534
    invoke-direct {p0}, Lcom/pocketchange/android/util/SDKThreadExceptionHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pocketchange/android/http/AsyncHttpRequestService$1;)V
    .locals 0

    .prologue
    .line 534
    invoke-direct {p0}, Lcom/pocketchange/android/http/AsyncHttpRequestService$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected logException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 537
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lcom/pocketchange/android/PCSingleton;->staticRecordException(Ljava/lang/Throwable;ZZ)V

    .line 538
    return-void
.end method
