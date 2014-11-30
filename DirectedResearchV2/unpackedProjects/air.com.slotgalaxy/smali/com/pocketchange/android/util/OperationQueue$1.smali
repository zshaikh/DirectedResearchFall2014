.class Lcom/pocketchange/android/util/OperationQueue$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/util/OperationQueue;->createRemoveOperationCallback(Ljava/lang/String;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/pocketchange/android/util/OperationQueue;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/util/OperationQueue;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/pocketchange/android/util/OperationQueue$1;->b:Lcom/pocketchange/android/util/OperationQueue;

    iput-object p2, p0, Lcom/pocketchange/android/util/OperationQueue$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/pocketchange/android/util/OperationQueue$1;->b:Lcom/pocketchange/android/util/OperationQueue;

    iget-object v1, p0, Lcom/pocketchange/android/util/OperationQueue$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/pocketchange/android/util/OperationQueue;->remove(Ljava/lang/String;)V

    .line 54
    return-void
.end method
