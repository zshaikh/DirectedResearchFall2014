.class Lcom/pocketchange/android/app/ActivityTaskManager$a;
.super Lcom/pocketchange/android/util/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pocketchange/android/app/ActivityTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/pocketchange/android/util/AsyncTask",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/pocketchange/android/app/ActivityTaskManager;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/app/ActivityTaskManager;Lcom/pocketchange/android/util/AsyncTask$Delegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pocketchange/android/app/ActivityTaskManager;",
            "Lcom/pocketchange/android/util/AsyncTask$Delegate",
            "<TResult;>;)V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p2}, Lcom/pocketchange/android/util/AsyncTask;-><init>(Lcom/pocketchange/android/util/AsyncTask$Delegate;)V

    .line 88
    iput-object p1, p0, Lcom/pocketchange/android/app/ActivityTaskManager$a;->a:Lcom/pocketchange/android/app/ActivityTaskManager;

    .line 89
    return-void
.end method


# virtual methods
.method protected onComplete(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lcom/pocketchange/android/app/ActivityTaskManager$a;, "Lcom/pocketchange/android/app/ActivityTaskManager$a<TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    iget-object v0, p0, Lcom/pocketchange/android/app/ActivityTaskManager$a;->a:Lcom/pocketchange/android/app/ActivityTaskManager;

    invoke-static {v0}, Lcom/pocketchange/android/app/ActivityTaskManager;->a(Lcom/pocketchange/android/app/ActivityTaskManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/pocketchange/android/app/ActivityTaskManager$a;->a:Lcom/pocketchange/android/app/ActivityTaskManager;

    invoke-static {v0}, Lcom/pocketchange/android/app/ActivityTaskManager;->b(Lcom/pocketchange/android/app/ActivityTaskManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/pocketchange/android/app/ActivityTaskManager$a;->a:Lcom/pocketchange/android/app/ActivityTaskManager;

    invoke-virtual {v0, p0}, Lcom/pocketchange/android/app/ActivityTaskManager;->a(Lcom/pocketchange/android/app/ActivityTaskManager$a;)V

    goto :goto_0

    .line 99
    :cond_1
    invoke-super {p0, p1}, Lcom/pocketchange/android/util/AsyncTask;->onComplete(Ljava/lang/Object;)V

    goto :goto_0
.end method
