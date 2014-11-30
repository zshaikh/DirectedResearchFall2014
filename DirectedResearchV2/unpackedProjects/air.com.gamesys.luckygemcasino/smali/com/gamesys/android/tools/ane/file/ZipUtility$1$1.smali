.class Lcom/gamesys/android/tools/ane/file/ZipUtility$1$1;
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

.field private final synthetic val$result_f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gamesys/android/tools/ane/file/ZipUtility$1;Lcom/gamesys/android/tools/ane/file/IAsyncListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamesys/android/tools/ane/file/ZipUtility$1$1;->this$1:Lcom/gamesys/android/tools/ane/file/ZipUtility$1;

    iput-object p2, p0, Lcom/gamesys/android/tools/ane/file/ZipUtility$1$1;->val$listener:Lcom/gamesys/android/tools/ane/file/IAsyncListener;

    iput-object p3, p0, Lcom/gamesys/android/tools/ane/file/ZipUtility$1$1;->val$result_f:Ljava/lang/String;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/gamesys/android/tools/ane/file/ZipUtility$1$1;->val$listener:Lcom/gamesys/android/tools/ane/file/IAsyncListener;

    iget-object v1, p0, Lcom/gamesys/android/tools/ane/file/ZipUtility$1$1;->val$result_f:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/gamesys/android/tools/ane/file/IAsyncListener;->onSucess(Ljava/lang/Object;)V

    .line 135
    return-void
.end method
