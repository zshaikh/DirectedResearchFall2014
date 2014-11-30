.class public abstract Lcom/pocketchange/android/util/ExceptionLoggingRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "logTag"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/pocketchange/android/util/ExceptionLoggingRunnable;->a:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 14
    :try_start_0
    invoke-virtual {p0}, Lcom/pocketchange/android/util/ExceptionLoggingRunnable;->runWithErrors()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :goto_0
    return-void

    .line 15
    :catch_0
    move-exception v0

    .line 16
    iget-object v1, p0, Lcom/pocketchange/android/util/ExceptionLoggingRunnable;->a:Ljava/lang/String;

    const-string v2, "Error executing runnable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public abstract runWithErrors()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
