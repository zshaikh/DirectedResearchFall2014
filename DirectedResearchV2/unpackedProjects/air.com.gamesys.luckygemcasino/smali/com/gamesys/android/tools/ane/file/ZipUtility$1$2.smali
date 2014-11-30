.class Lcom/gamesys/android/tools/ane/file/ZipUtility$1$2;
.super Ljava/lang/Object;
.source "ZipUtility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamesys/android/tools/ane/file/ZipUtility$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gamesys/android/tools/ane/file/ZipUtility$1;

.field private final synthetic val$listener:Lcom/gamesys/android/tools/ane/file/IAsyncListener;


# direct methods
.method constructor <init>(Lcom/gamesys/android/tools/ane/file/ZipUtility$1;Lcom/gamesys/android/tools/ane/file/IAsyncListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamesys/android/tools/ane/file/ZipUtility$1$2;->this$1:Lcom/gamesys/android/tools/ane/file/ZipUtility$1;

    iput-object p2, p0, Lcom/gamesys/android/tools/ane/file/ZipUtility$1$2;->val$listener:Lcom/gamesys/android/tools/ane/file/IAsyncListener;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/gamesys/android/tools/ane/file/ZipUtility$1$2;->val$listener:Lcom/gamesys/android/tools/ane/file/IAsyncListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/gamesys/android/tools/ane/file/IAsyncListener;->onError(Ljava/lang/Object;)V

    .line 144
    return-void
.end method
