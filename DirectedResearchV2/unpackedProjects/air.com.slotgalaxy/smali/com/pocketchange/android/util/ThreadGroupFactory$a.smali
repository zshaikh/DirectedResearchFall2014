.class Lcom/pocketchange/android/util/ThreadGroupFactory$a;
.super Ljava/lang/ThreadGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pocketchange/android/util/ThreadGroupFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "com.pocketchange.android"

    invoke-direct {p0, v0}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    .line 18
    new-instance v0, Lcom/pocketchange/android/util/SDKThreadExceptionHandler;

    invoke-direct {v0}, Lcom/pocketchange/android/util/SDKThreadExceptionHandler;-><init>()V

    iput-object v0, p0, Lcom/pocketchange/android/util/ThreadGroupFactory$a;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Lcom/pocketchange/android/util/ThreadGroupFactory$1;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/pocketchange/android/util/ThreadGroupFactory$a;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/pocketchange/android/util/ThreadGroupFactory$a;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 26
    return-void
.end method
