.class Lcom/pocketchange/android/util/PeriodicTask$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pocketchange/android/util/PeriodicTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/pocketchange/android/util/PeriodicTask;


# direct methods
.method private constructor <init>(Lcom/pocketchange/android/util/PeriodicTask;)V
    .locals 3

    .prologue
    .line 100
    invoke-static {}, Lcom/pocketchange/android/util/ThreadGroupFactory;->getDefaultThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executor for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    .line 101
    iput-object p1, p0, Lcom/pocketchange/android/util/PeriodicTask$a;->a:Lcom/pocketchange/android/util/PeriodicTask;

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Lcom/pocketchange/android/util/PeriodicTask;Lcom/pocketchange/android/util/PeriodicTask$1;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/pocketchange/android/util/PeriodicTask$a;-><init>(Lcom/pocketchange/android/util/PeriodicTask;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/pocketchange/android/util/PeriodicTask$a;->a:Lcom/pocketchange/android/util/PeriodicTask;

    invoke-virtual {v0}, Lcom/pocketchange/android/util/PeriodicTask;->run()V

    .line 106
    return-void
.end method
